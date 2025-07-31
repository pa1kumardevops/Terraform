#!/bin/bash

# Update system
dnf update -y

# Install NGINX
dnf install -y nginx

# Enable and start NGINX
systemctl enable nginx
systemctl start nginx

# Optional: Create a custom index.html
echo "<h1>Welcome to NGINX deployed via Terraform!</h1>" > /usr/share/nginx/html/index.html

