#!/bin/bash
systemctl start mysqld.service
systemctl start httpd.service
systemctl start php-fpm.service
