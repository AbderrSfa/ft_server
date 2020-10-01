# Change into ft_server directory.
cd /var/www/ft_server/

# Download WordPress.
wget https://wordpress.org/latest.tar.gz

# Extract downloaded file.
tar xvf latest.tar.gz

# Remove tar file and sample config file. 
rm -rf latest.tar.gz /var/www/ft_server/wordpress/wp-config-sample.php

# Move config file into WordPress.
mv /root/WordPress/wp-config.php /var/www/ft_server/wordpress/

# Change ownership of wordpress directory.
chown -R root:root /var/www/ft_server/wordpress
