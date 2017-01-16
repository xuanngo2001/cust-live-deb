#!/bin/bash
set -e
# Description: Allow execution of Drupal .htaccess file

# Enable Clean URLs: http://drupal.stackexchange.com/a/105597
  sed -i '/var\/www\//,/Directory>/ s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf
  service apache2 restart