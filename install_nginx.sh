#! /bin/bash 

# Install Web server NGinx on Ubuntu 16.04 LTS
# No error checking use  '-x'  in bash line above to debug 
# must be run with a user ID that requires no passwd for sudo 
# all commands have standard output a tool that calls the script 
# should have standard logging for each executing step

apt-get install -y nginx 

# ufw  is standard on all Ubuntu Distros  
ufw allow 'Nginx HTTP'
ufw enable
ufw status

ufw allow 3200/tcp
ufw allow 3400/tcp

# Set up example.com on port 3200 
mkdir /var/www/example
cp example.html /var/www/example
cp example /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available//example /etc/nginx/sites-enabled/example
ls -la /etc/nginx/sites-enabled/
systemctl reload nginx  
systemctl enable nginx
######
# ADD FW rules for specified ports in requirements

#### exit with zero "Sucess" when script reaches this point
exit 0 
