#!/bin/bash

# Update system packages
echo "Updating system packages..."
sudo yum update -y

# Install any necessary PHP extensions
echo "Installing PHP extensions..."
sudo yum install -y php8.3-mysql php8.3-xml php8.3-mbstring php8.3-curl php8.3-zip

# Install required dependencies
echo "Installing required dependencies for WordPress..."
sudo yum install -y httpd libapache2-mod-php php8.3 php8.3-mysql php8.3-xml php8.3-mbstring php8.3-curl php8.3-zip unzip

# Restart Apache service
echo "Restarting Apache service..."
sudo systemctl restart httpd
