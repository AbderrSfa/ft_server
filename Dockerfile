#=======================================================================================================#
#                                                                                                       #
#         d8888           .d888         d8b 888      d8b       d888   .d8888b.   .d8888b.  8888888888   #
#        d88888          d88P"          Y8P 888      Y8P      d8888  d88P  Y88b d88P  Y88b       d88P   #
#       d88P888          888                888                 888       .d88P      .d88P      d88P    #
#      d88P 888 .d8888b  888888 8888b.  888 88888b.  888        888      8888"      8888"      d88P     #
#     d88P  888 88K      888       "88b 888 888 "88b 888        888       "Y8b.      "Y8b.  88888888    #
#    d88P   888 "Y8888b. 888   .d888888 888 888  888 888        888  888    888 888    888   d88P       #
#   d8888888888      X88 888   888  888 888 888  888 888        888  Y88b  d88P Y88b  d88P  d88P        #
#  d88P     888  88888P' 888   "Y888888 888 888  888 888      8888888 "Y8888P"   "Y8888P"  d88P         #
#                                                                                                       #
#=======================================================================================================#


# Debian Buster base OS.
FROM debian:buster

# Install necessary packages.
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y openssl
RUN apt-get install -y vim
RUN apt-get install -y nginx
RUN apt-get install -y php7.3-fpm
RUN apt-get install -y wget
RUN apt-get install -y php-mysql
RUN apt-get install -y mariadb-server

# Copy files into container.
COPY srcs /root

# Create ft_server directory, move index file and its resources to the directory.
RUN mkdir -p /var/www/ft_server
RUN mv /root/index.html /var/www/ft_server/
RUN mv /root/resources /var/www/ft_server/resources/

# Move start.sh script, nginx index file, and nginx config file to thier appropriate directories.
RUN mv /root/start.sh ./
RUN mv /var/www/html/index.nginx-debian.html /var/www/ft_server/index.nginx-debian.html
RUN mv /root/default /etc/nginx/sites-available/default

# Generate self-signed certificate and key.
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/selfsigned-ft_server.key -out /etc/ssl/certs/selfsigned-ft_server.crt -subj "/C=MA/ST=Beni Mellal-Khenifra/L=Khouribga/O=1337/CN=ft_server"

# Run phpMyAdmin, Wordpress and database scripts.
RUN bash /root/phpMyAdmin/phpmyadmin.sh
RUN bash /root/WordPress/wordpress-setup.sh
RUN bash /root/MySQL/database.sh

# Run start.sh script
CMD bash start.sh
