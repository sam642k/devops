#!/bin/bash

sudo dnf update -y
sudo dnf install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx
echo "Hello DevOps from $(hostname -f)" | sudo tee /usr/share/nginx/html/index.html