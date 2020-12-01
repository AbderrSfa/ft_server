# Change into ft_server directory.
cd /var/www/ft_server/

# Download phpMyAdmin.
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.5/phpMyAdmin-4.9.5-english.tar.gz

# Extract downloaded file.
tar -xvf phpMyAdmin-4.9.5-english.tar.gz

# Move extracted files into phpmyadmin directory.
mv phpMyAdmin-4.9.5-english phpmyadmin

# Remove tar file and sample config file. 
rm -rf phpMyAdmin-4.9.5-english.tar.gz /var/www/ft_server/phpmyadmin/config.sample.inc.php

# Move config file into phpmyadmin.
mv /srcs/phpMyAdmin/config.inc.php /var/www/ft_server/phpmyadmin/
