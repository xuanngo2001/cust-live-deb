# Install composer.
wget https://getcomposer.org/installer
php installer
rm -f installer
mv composer.phar /usr/local/bin/composer
rm -f /usr/bin/composer
ln -s /usr/local/bin/composer /usr/bin/composer


# Install Drush
mkdir -p /usr/local/src/drush
tar -xvzf drush-8.0.0-rc1.tar.gz --strip-components=1 -C /usr/local/src/drush
cd /usr/local/src/drush
rm -f /usr/bin/drush
ln -s /usr/local/src/drush/drush /usr/bin/drush
composer install
cd -