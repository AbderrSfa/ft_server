# Start mysql.
service mysql start

# Create WordPress database.
mysql -e "CREATE DATABASE wordpress;"

# Create user account with username and password 'admin'.
mysql -e "CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';"

# Grant 'admin' all privileges on WordPress and phpMyAdmin.
mysql -e "GRANT ALL ON wordpress.* TO 'admin'@'localhost';"
mysql -e "GRANT ALL ON phpmyadmin.* TO 'admin'@'localhost';"

# Import create_tables file into MySQL.
mysql < /var/www/ft_server/phpmyadmin/sql/create_tables.sql

# Flush (reload) privileges.
mysql -e "FLUSH PRIVILEGES;"
