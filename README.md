# 📡 ft_server

## 🧐 Description
This project serves as an introduction into system administration. It reveals the importance of using scripts to automate tasks, and the purpose behind using Docker and Docker containers. The aim of the project is to run a server on a Debian Buster OS inside a Docker container. The server must run WordPress, phpMyAdmin and MySQL.

## 🔧 Usage
To Build the image, run:

`docker build -t ft_server .`

To run the image, run:

`docker run -it -p 80:80 -p 443:443 ft_server`

## ✅ The following are created automatically
- A self-signed SSL certificate.
- MySQL.
- phpMyAdmin
- WordPress.

<img width="2300" alt="Screen Shot 2020-12-01 at 10 57 05 AM" src="https://user-images.githubusercontent.com/58333462/100725222-0f67ce80-33c4-11eb-943b-a1977a73348c.png">
