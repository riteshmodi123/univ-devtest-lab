#!/bin/bash
apt-get -y update


# install Apache2
apt-get -y install apache2

# write some HTML
echo \<center\>\<h1\>My Demo App\</h1\>\<br/\>\</center\> > /var/www/html/demo.html

# restart Apache
apachectl restartSaurabhs-MacBook-Pro:Templates mani$

# Install lab material  

# Install CP601 (System Programming and Compiler Construction) related material
# TODO