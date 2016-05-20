Docker PHP interpreter
======================

Installation
------------
1. Install [composer](https://getcomposer.org).
2. Add this line to your `~/.zshrc` or `~/.bashrc`:

   ```bash
   export PATH=~/.composer/vendor/bin:$PATH
   ```

3. Add repository to composer:

   ```bash
   composer global config repositories.dhp vcs https://git.itim.vn/coccoc/labs-dhp.git
   ```

3. Install dhp:

   ```bash
   composer global require coccoc/dhp
   ```

Using
-----

You can use `dhp` command as usual PHP interpreter.
Example: `dhp script.php` or `dhp -i`.

For starting debugger pass `XDEBUG_CONFIG` env variable.
Example: `XDEBUG_CONFIG="idekey=PHPSTORM" dhp script.php`

Configuration
-------------

Available options:
 - `DHP_DOCKER_IMAGE` - Docker PHP image name. Default: `docker2o.itim.vn/library/php:7.0`
 - `DHP_EXPORT_ENV` - List of env variables to pass to php

You have three ways to set options:
1. As env variables in your shell. Example: `export DHP_EXPORT_ENV="APP_ENV"`
2. Pass options before command. Example: `DHP_EXPORT_ENV="APP_ENV" dhp script.php`
3. Create `.dhp` file with options in your project root path (recommended)
