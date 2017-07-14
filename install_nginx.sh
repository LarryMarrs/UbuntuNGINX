#! /bin/bash 

# Install Web server NGinx on Ubuntu 16.04 LTS
# No error checking use  '-x'  in bash line above to debug 
# must be run with a user ID that requires no passwd for sudo 
# all commands have standard output a tool that calls the script 
# should have standard logging for each executing step

sudo apt-get install -y nginx

# ufw  is standard on all  
sudo ufw allow 'Nginx HTTP'
sudo ufw enable
sudo ufw status

