# MySQL Docker Setup and Testing Pets Database

This README will guide you through setting up a MySQL database using Docker and testing it with a sample 'pets' database.

## Prerequisites

- Docker installed on your system
- Basic knowledge of Docker and MySQL

## Setting up MySQL using Docker

1. Download this repo and change directory to the Docker directory
1. You will find the files:
   - `1.pull_image.sh`
   - `2.create_volume.sh`
   - `3.run_container.sh`
   - `4.command_line.sh`
   - `5.stop_mysql.sh`
   - `6.start_mysql.sh`
   - `7.restart_mysql.sh`

### 1.pull_image.sh

Pulls the official image:
   
```bash
docker pull docker.io/mysql
```

### 2.create_volume.sh

Creates the docker volume and displays it:

```bash
docker volume create mysql-data
docker volume ls
```

### 3.run_container.sh

Creates a container named mysql-server and mounts the volume mysql-data to /var/lib/mysql for data persistency. It assigns the password MySQL2024 to the database for later use.

```bash
docker run -d --name=mysql-server -p 3306:3306 -v mysql-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=MySQL2024 mysql
```

### 4.command_line.sh

Opens a command line to interact with the db, uses the password assigned in the previous step.

```bash
docker exec -it mysql-server mysql -u root -p
```

### 5.stop_mysql.sh

Stops the running container.

```bash
docker stop mysql-server
```

### 6.start_mysql.sh

Starts the container mysql-server

```bash
docker start mysql-server
```

### 7.restart_mysql.sh

Restarts the container mysql-server (in case of issues)

```bash
docker restart mysql-server
```