# ft_server

## Description
This project serves as an introduction into system administration. It reveals the importance of using scripts to automate tasks, and the purpose behind using Docker and Docker containers. The aim of the project is to run a server on a Debian Buster OS inside a Docker container. The server must run WordPress, phpMyAdmin and MySQL.

## Usage
To Build the image, run:

`docker build -t ft_server .`

To run the image, run:

`docker run -it -p 80:80 443:443 ft_server`

## The following are created automatically
- A self-signed SSL certificate.
- MySQL.
- phpMyAdmin
- WordPress.
