# 🐳 Docker Deployment and Container Lifecycle Documentation

## 🚀 Deployed Services
The Nginx web server was successfully pulled and executed inside the KillerCoda Docker environment, mapping host port 8080 to container port 80.

## 🔄 Container Lifecycle Commands

* 📋 `docker ps`: Displays all currently active containers running in the Docker environment.
* 🛑 `docker stop`: Gracefully stops a running container by sending a termination signal to the main process.
* 🔍 `docker ps -a`: Lists all containers, including stopped ones, to confirm that the target container is no longer running.
* 🗑️ `docker rm`: Completely deletes the stopped container from disk, freeing up system resources.

## 📸 Evidence
* 🖼️ Lifecycle Execution Screenshot: Saved as screenshots/container-lifecycle.png in the repository.
