#!/bin/bash
rm -rf vendor/
rm -rf docroot/core
rm -rf docroot/vendor
rm -rf docroot/modules/contrib/
composer update
#drush @scotts.local cr
#drush @scotts.local updb

