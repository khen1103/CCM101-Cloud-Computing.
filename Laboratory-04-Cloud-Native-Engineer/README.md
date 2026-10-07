# ☁️ Laboratory Activity 4: Mission 4 - The Cloud-Native Engineer

## 📋 Mission Overview
Successfully transitioned from traditional virtual machines to containerized architectures by exploring the fundamentals of Docker, deploying a live Nginx web server, and managing container lifecycles within a cloud-native environment.

## 🎯 Objectives
* Differentiate between traditional Virtual Machines (VMs) and Containers.
* Access a Docker-enabled cloud environment using KillerCoda.
* Execute fundamental Docker CLI commands.
* Pull, run, manage, and terminate a containerized web server application (Nginx).
* Create professional technical documentation using Markdown.

## 💻 Docker Commands Executed
* `docker --version` - Verifies the installation and version of the Docker environment.
* `docker pull nginx` - Downloads the official Nginx web server image from Docker Hub.
* `docker run -d -p 8080:80 --name my-nginx-server nginx` - Runs the Nginx container in detached mode and maps host port 8080 to container port 80.
* `curl http://localhost:8080` - Sends a local HTTP request to verify the running web server.
* `docker ps` - Lists currently active and running containers.
* `docker stop my-nginx-server` - Gracefully stops the running Nginx container.
* `docker ps -a` - Displays all containers to confirm the stopped state.
* `docker rm my-nginx-server` - Completely removes the container from disk.

## 🛠️ Skills Learned
* Understanding process-level isolation through containers versus hardware-level virtualization.
* Operating the Docker CLI for image management and container orchestration.
* Implementing port mapping for external web application access.
* Managing the complete container lifecycle (start, stop, verify, remove).

## ⚠️ Challenges Encountered
* Navigating syntax requirements when passing container names or IDs into lifecycle commands.
* Ensuring proper port configurations to avoid network mapping conflicts.
