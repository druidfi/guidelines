# macOS scripts to install some good software

These commands are meant to be pasted into your terminal and run.

Install Oh My Zsh

```
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Install Brew

```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install Ruby

```
$ brew install ruby
```

Install PHP

```
$ brew install php
```

Install Composer

```
$ php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
$ php composer-setup.php
$ php -r "unlink('composer-setup.php');"
$ chmod +x composer.phar
$ mv composer.phar /usr/local/bin/composer
```
