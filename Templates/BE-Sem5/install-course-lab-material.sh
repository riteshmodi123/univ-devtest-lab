#!/bin/bash
apt-get -y update


# Install lab material  

# Install CP501 (Web Technologies Laboratory) related material

# install Apache2
apt-get -y install apache2

# write some HTML
echo \<center\>\<h1\>My Demo App\</h1\>\<br/\>\</center\> > /var/www/html/demo.html

# restart Apache
apachectl restartSaurabhs-MacBook-Pro:Templates mani$


# TO ADD