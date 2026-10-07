# 🐳 Docker Compose Guide and Technical Documentation

## 🛠️ Services Block Explained
The `services:` block is the core component of a Docker Compose file. It defines the individual containers (services) that make up your application stack—in this case, the database and the app. Each service acts as an independent building block that can be configured, networked, and scaled separately within the same infrastructure blueprint.

## 🔗 How Nextcloud Found the Database
The Nextcloud application container successfully located and communicated with the MariaDB database container through the environment variable `MYSQL_HOST=database`. Because Docker Compose automatically creates an internal bridge network for all services defined in the same YAML file, containers can seamlessly resolve and talk to each other using their service names (`database`) as hostnames without needing hardcoded IP addresses.

## ⚖️ Difference Between Docker Run and Docker Compose Up -d
* **`docker run` (used in Mission 4):** This is a manual command used to launch a single container one at a time. If an application requires multiple linked containers, you have to manually configure networking, environment variables, and storage flags individually for each container, which is prone to human error.
* **`docker-compose up -d`:** This is an Infrastructure as Code (IaC) approach. It reads a complete multi-tier blueprint from a single YAML configuration file and launches, links, and runs the entire multi-container stack simultaneously in the background with just one command.
