# 💭 Mission Reflection: The Cloud-Native Engineer

## 📝 Reflection Report

### 1. How does the boot time and setup process of a Docker container compare to installing an operating system on a Virtual Machine?
Starting a Docker container is much faster than setting up a virtual machine. Installing an operating system on a virtual machine takes many minutes because it needs a full separate system and a hypervisor. In contrast, a Docker container starts in just a few seconds by sharing the main computer system core, making it very light and fast.

### 2. Why is port mapping (p 8080:80) necessary when running a web server inside a container?
Port mapping, such as using port 8080 to 80, is necessary because containers run in an isolated network. Without this port bridge, web browsers outside the container cannot reach or see the web server running inside. Opening this port allows regular network traffic to connect to the web application safely.

### 3. What happens to the data inside a container when you use the docker rm command?
When the container removal command is used, any temporary data saved inside the container storage layer is permanently deleted. Containers are designed to be temporary and clean. If files need to be saved permanently, external storage volumes must be used so the data is not lost when the container is removed.

### 4. How do you think containerization changes the way software developers and IT operations teams work together (DevOps)?
Containerization changes how developers and IT operations teams work together by making software sharing smooth and reliable. Developers can pack an application and all required files into a single container. This ensures the app runs the exact same way on testing computers and production servers, stopping conflicts between teams.

### 5. How is your GitHub portfolio evolving?
Building this GitHub portfolio is evolving into a structured collection of real-world cloud computing skills. Organizing each laboratory activity with clear notes and screenshots changes basic school tasks into a professional online portfolio that shows practical technical experience.
