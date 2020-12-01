#!bin/bash

# Start MySQL, php7.3-fpm, and Nginx.
# Variables store output from last command. 0 if successful, non-zero if failed.
service mysql start
DATABASE=$?

service php7.3-fpm start
PHP_FPM=$?

service nginx start
ENGINEX=$?

echo " ---> Server is running..."

# While services are running, the container remains up.
while [ "$ENGINEX" = 0 ] && [ "$DATABASE" = 0 ] && [ "$PHP_FPM" = 0 ]
do
	sleep 30
	service nginx status > /dev/null
	ENGINEX=$?
	service mysql status > /dev/null
	DATABASE=$?
	service php7.3-fpm status > /dev/null
	PHP_FPM=$?
done

# If an error occurs, all services are stopped and container exits.
service nginx stop
service mysql stop
service php7.3-fpm stop

echo " ---> Stopping server..."
echo " ---> Exiting container..."
