DHP. Docker PHP interpreter
======================

DHP is a wrapper around a PHP docker container. It provides transparent
using containerized PHP as you use usual local PHP interpreter.

P.S. i shit bash.

Installation
------------
1. Install [composer](https://getcomposer.org).
2. Add this line to your `~/.zshrc` or `~/.bashrc`:

   ```bash
   export PATH=~/.composer/vendor/bin:$PATH
   ```

3. Install DHP:

   ```bash
   composer global require shumkov/dhp:*
   ```

Upgrade
-------

Run `composer global update shumkov/dhp`

Using
-----

You can use `dhp` command as usual PHP interpreter.
Example: `dhp script.php` or `dhp -i`.

xDebug is disabled by default. It will enable when you will start debug.

For starting debugger pass `XDEBUG_CONFIG` env variable.
Example: `XDEBUG_CONFIG="idekey=PHPSTORM" dhp script.php`

Configuration
-------------

Available options:
 - `DHP_DOCKER_IMAGE` - Docker PHP image name. Default: `docker2o.itim.vn/library/php:7.0`
 - `DHP_EXPORT_ENV` - List of env variables to pass to php
 - `DHP_DOCKER_NET` - Use existing docker network

You have three ways to set options:
1. As env variables in your shell. Example: `export DHP_EXPORT_ENV="APP_ENV"`
2. Pass options before command. Example: `DHP_EXPORT_ENV="APP_ENV" dhp script.php`
3. Create `.env` file with options in your project root path (recommended)

Author
------
Ivan Shumkov <ivan@shumkov.ru>