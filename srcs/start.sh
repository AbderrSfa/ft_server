#!bin/bash

# Start MySQL, php7.3-fpm, and Nginx.
service mysql start
service php7.3-fpm start
service nginx start

# Variable SERVER stores output from last command. 0 if successful, non-zero if failed.
SERVER=$?

echo " ---> Server is running..."

# While nginx is running, the container remains up.
while [ "$SERVER" = 0 ]
do
	sleep 30
	service nginx status > /dev/null
	SERVER=$?
done

# If an error occurs, all services are stopped and container exits.
service nginx stop
service mysql stop
service php7.3-fpm stop

echo " ---> Stopping server..."
echo " ---> Exiting container..."
