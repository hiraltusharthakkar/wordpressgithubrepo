#!/bin/bash

# Set proper permissions for WordPress files
echo "Setting permissions for WordPress files..."
sudo chown -R apache:apache /var/www/html
sudo find /var/www/html -type d -exec chmod 755 {} \;
sudo find /var/www/html -type f -exec chmod 644 {} \;

# Create wp-config.php from wp-config-sample.php
echo "Configuring wp-config.php..."
cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

# Update wp-config.php with database credentials
sed -i "s/database_name_here/wordpress/" /var/www/html/wp-config.php
sed -i "s/username_here/wp_user/" /var/www/html/wp-config.php
sed -i "s/password_here/your_password/" /var/www/html/wp-config.php
