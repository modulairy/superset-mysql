# Superset with MySQL Plugin Docker Image

This Docker image includes the necessary MySQL plugin for Apache Superset to connect to a MySQL database.

## Usage

### Pulling the Image

You can pull the image from Docker Hub:

```bash
docker pull your-docker-username/superset-mysql-plugin:latest
```

### Running the Image

You can run Superset with the following command. This command will bring up the image and forward port 8088 from the host system to port 8088:

```bash
docker run -p 8088:8088 your-docker-username/superset-mysql-plugin:latest
```

### Configuring MySQL Connection

Access the Superset interface (http://localhost:8088) and add a database connection. In the connection settings, provide the necessary information for MySQL:

- Host: MySQL server address
- Port: MySQL server port (default is 3306)
- Database: Name of the database you want to use
- Username: MySQL username
- Password: MySQL user password
- ...

### Updating the Docker Image

To update the Docker image:

```bash
docker build -t your-docker-username/superset-mysql-plugin:latest .
docker push your-docker-username/superset-mysql-plugin:latest
```

## Contribution

If you want to improve this image or fix issues, feel free to contribute!

## License

This Docker image is licensed under the [Apache License 2.0](LICENSE).
