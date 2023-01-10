# macOS scripts to install some good software

These commands are meant to be pasted into your terminal and run.

Install Oh My Zsh

``` sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Install Brew

``` sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install PHP with Brew (macOS)

``` sh
brew tap shivammathur/php
brew install shivammathur/php/php@8.0
brew install shivammathur/php/php@8.1
brew install shivammathur/php/php@8.2
```

Switch between version:

``` sh
brew link --overwrite --force shivammathur/php/php@8.0
```

Install Composer with Brew (macOS):

``` sh
brew install composer
```

or manually:

``` sh
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
chmod +x composer.phar
mv composer.phar /usr/local/bin/composer
```
