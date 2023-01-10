# Github Actions - Workflows - Test Drupal Pull Request

Put this to project's repo in `.github/workflows/dump-artifact.yml`:

Process:

- Run by schedule, e.g. every night at 2 AM
- Checkout repository and current branch
- [optional] Install VPN
- Setup SSH key for accessing source with SSH: comes from `${{ secrets.PRIVATE_SSH_KEY }}`
- Create database dump using `DUMP_CALL` env
- Store `dump.sql` to repository artifacts

Change ENV variables to suit your project's needs.

## VPN

If connections needs VPN connection, add opvn profile in `.github/workflows/vpn.ovpn` and set `OVPN` to `yes`.
Set `OVPN_USERNAME` and `OVPN_PASSWORD` in the repository secrets.

```
on:
  schedule:
    - cron:  '0 0 * * *' # UTC == 2 AM EET
  workflow_dispatch:

name: Create dump artifact

env:

  DUMP_CALL: drush -r /app/public sql:dump --structure-tables-key=common
  DUMP_NAME: dump.sql

  OVPN: no # yes or no
  OVPN_FILE: .github/workflows/vpn.ovpn

  SSH_USER: some-ssh-user
  SSH_HOST: some-ssh-host-or-ip
  SSH_PORT: 22
  SSH_KEY: ${{ secrets.PRIVATE_SSH_KEY }}

jobs:

  dump-artifact-ssh:

    runs-on: ubuntu-latest

    steps:

      - uses: actions/checkout@v3

      - name: Install OpenVPN
        run: sudo apt-get install -y openvpn openvpn-systemd-resolved
        if: ${{ env.OVPN == 'yes' }}

      - name: Connect to VPN
        uses: kota65535/github-openvpn-connect-action@v2
        with:
          config_file: ${{ env.OVPN_FILE }}
          username: ${{ secrets.OVPN_USERNAME }}
          password: ${{ secrets.OVPN_PASSWORD }}
        if: ${{ env.OVPN == 'yes' }}

      - name: Setup SSH key
        uses: shimataro/ssh-key-action@v2
        with:
          key: ${{ env.SSH_KEY }}
          known_hosts: unnecessary
          if_key_exists: replace
        if: ${{ env.SSH_KEY }}

      - name: Create dump
        run: |
          $SSH "${{ env.DUMP_CALL }}" > "${{ env.DUMP_NAME }}"
        env:
          SSH: ssh -o StrictHostKeyChecking=no ${{ env.SSH_USER }}@${{ env.SSH_HOST }} -p ${{ env.SSH_PORT }}

      - name: Create artifact
        uses: actions/upload-artifact@v3
        with:
          name: latest-dump
          path: ${{ env.DUMP_NAME }}
          retention-days: 7

```
