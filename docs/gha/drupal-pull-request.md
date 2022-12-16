# Github Actions - Workflows - Test Drupal Pull Request

Put this to project's repo in `.github/workflows/drupal-pull-request.yml`:

Process:

- Run on pull requests
- Check if Pull Request was made by Dependabot or Renovate
- Start up MySQL (note: you can also setup service for database)
- Checkout repository and current branch
- Download artifact dump with Github CLI
- Setup PHP version
- Validate `composer.json` file
- Run `composer install` to build codebase
- Lint custom Drupal code
- [If artifact dump was downloaded] Import database dump
- [If artifact dump was not found] Install Drupal from configuration with Drush
- Show `drush status` output
- [If artifact dump was downloaded] Run `drush deploy`
- [If PR was created by a bot] Check for new conf and commit if found

Change ENV variables to suit your project's needs.

```
name: Test Drupal Pull Request

on:
  pull_request:

env:
  PHP_VERSION: '8.1'
  DRUPAL_DB_HOST: 127.0.0.1
  DRUPAL_DB_PORT: 3306
  DRUPAL_DB_USER: root
  DRUPAL_DB_PASS: root
  DRUPAL_DB_NAME: drupal
  SIMPLETEST_DB: mysql://root:root@127.0.0.1:3306/drupal
  SIMPLETEST_BASE_URL: http://127.0.0.1:8080

jobs:

  build:

    runs-on: ubuntu-latest

#    services:
#      db:
#        # See https://hub.docker.com/r/druidfi/mariadb
#        image: druidfi/mariadb:10.5-drupal
#        ports:
#          - 3306:3306
#        options: --health-cmd="mysqladmin ping" --health-interval=10s --health-timeout=5s --health-retries=3

    steps:

      - name: Check if Pull Request was made by Dependabot or Renovate
        if: |
          github.event_name == 'pull_request' &&
          (
            github.actor == 'dependabot[bot]' || github.actor == 'renovate[bot]' ||
            startsWith(github.event.pull_request.head.ref, 'dependabot/') ||
            startsWith(github.event.pull_request.head.ref, 'renovate/')
          )
        run: echo "IS_BOT=true" >> $GITHUB_OUTPUT
        id: pr
        # You can now use this in following steps:
        # if: steps.pr.outputs.IS_BOT

      - name: Start MySQL and create drupal database
        run: |
          sudo systemctl start mysql.service
          mysql -u${{ env.DRUPAL_DB_USER }} -e "create database ${{ env.DRUPAL_DB_NAME }}";
        env:
          MYSQL_PWD: ${{ env.DRUPAL_DB_PASS }}

      - name: Checkout code
        uses: actions/checkout@v3
        with:
          fetch-depth: 1
          ref: ${{ github.event.pull_request.head.ref }}

      - name: Download dump
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        run: |
          gh run download -n latest-dump

      - name: Setup PHP
        uses: shivammathur/setup-php@v2
        with:
          php-version: ${{ env.PHP_VERSION }}

      - name: Validate composer.json
        run: composer validate

      - name: Install Composer dependencies
        run: composer install --prefer-dist --optimize-autoloader --no-progress --no-interaction

      - name: Lint custom Drupal code
        run: |
          vendor/bin/phpcs --config-set installed_paths vendor/drupal/coder/coder_sniffer
          vendor/bin/phpcs -i
          vendor/bin/phpcs -n --standard=${{ env.CS_STANDARDS }} --extensions=${{ env.CS_EXTS }} --ignore=${{ env.CS_IGNORE }} ${{ env.CS_PATHS }}
        env:
          CS_STANDARDS: Drupal,DrupalPractice
          CS_EXTS: inc,php,module,install,profile,theme
          CS_IGNORE: node_modules
          CS_PATHS: public/modules/custom public/themes/custom
        continue-on-error: true

      - name: Import dump.sql (if exists)
        if: hashFiles('dump.sql') != ''
        run: |
          vendor/bin/drush sql-query --file=$GITHUB_WORKSPACE/dump.sql --verbose --yes
          echo "DUMP_IMPORTED=true" >> $GITHUB_OUTPUT
        id: dump

      - name: Install Drupal from configuration
        if: hashFiles('dump.sql') == ''
        run: vendor/bin/drush site-install --verbose --yes --existing-config

      - name: Show Drupal status
        run: vendor/bin/drush status

      - name: Run Drush deploy (if dump was used)
        if: steps.dump.outputs.DUMP_IMPORTED
        # 'vendor/bin/drush menu-item-extras-clear-extra-data all' is needed as long we're using dump which includes it
        run: |
          vendor/bin/drush deploy

#      - name: Run web server with Drush
#        run: |
#          vendor/bin/drush runserver $SIMPLETEST_BASE_URL > /dev/null 2>&1 &
#          chromedriver --port=4444 > /dev/null 2>&1 &

#      - name: Run PHPUnit tests
#        run: |
#          set -o pipefail && vendor/bin/phpunit -c $GITHUB_WORKSPACE/phpunit.xml.dist --testdox --verbose | tee phpunit-result.txt
#          cat phpunit-result.txt | grep -q "✔ Unit test"
#          cat phpunit-result.txt | grep -q "✔ Kernel test"
#          cat phpunit-result.txt | grep -q "✔ Functional test"
#          cat phpunit-result.txt | grep -q "✔ Javascript test"

      - name: Bot PRs - Export configuration
        if: steps.pr.outputs.IS_BOT && steps.dump.outputs.DUMP_IMPORTED
        run: vendor/bin/drush cex --yes

      - name: Bot PRs - Check for modified files
        if: steps.pr.outputs.IS_BOT && steps.dump.outputs.DUMP_IMPORTED
        run: |
          ${{ env.GIT_STATUS }}
          echo "STATUS=$(test -z "$(${{ env.GIT_STATUS }} --porcelain)" && echo "clean" || echo "dirty")" >> $GITHUB_OUTPUT
          echo "BODY=$(${{ env.GIT_STATUS }} --porcelain)" >> $GITHUB_OUTPUT
        env:
          GIT_STATUS: git status conf/cmi
        id: changes

      - name: Bot PRs - Update changes in GitHub repository
        if: steps.pr.outputs.IS_BOT && steps.dump.outputs.DUMP_IMPORTED && steps.changes.outputs.STATUS == 'dirty'
        run:  |
          git config user.name '${{ github.actor }}'
          git config user.email '${{ github.actor }}@users.noreply.github.com'
          git add -A
          git commit -m 'Drush: add configuration export'
          git cherry -v
          git push
          gh pr comment --body "🧙 added following changes:<br><br>${{ steps.changes.outputs.BODY }}"
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}

#      - name: Add comment to PR
#        run: gh pr comment --body "✅ This PR was processed by drupal-pull-request.yml workflow"
#        env:
#          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}

```
