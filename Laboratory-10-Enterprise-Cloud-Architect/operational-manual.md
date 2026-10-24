# 📘 Enterprise Operational Manual: Nextcloud Private Cloud Infrastructure
**Author:** Khenjee Marzan Agmata  
**Course:** CCM101 Cloud Computing - Laboratory Final Project (Mission 10)  
**Institution:** University of Eastern Pangasinan  

---

## 🏛️ 1. System Architecture Overview
This operational manual details the deployment, security hardening, container orchestration, and disaster recovery procedures for our enterprise-grade private cloud platform powered by **Nextcloud** and **MariaDB 10.11**, running on an **Ubuntu Server** virtual machine hosted via **Oracle VM VirtualBox**.

### 🛠️ Architecture Stack:
* **Hypervisor:** Oracle VM VirtualBox (Type 2 Hypervisor) 💻
* **Guest OS:** Ubuntu Server (Headless Linux distribution) 🐧
* **Containerization Engine:** Docker & Docker Compose 🐳
* **Application Layer:** Nextcloud (Latest) ☁️
* **Database Layer:** MariaDB 10.11 LTS 🗄️
* **Storage:** Docker Persistent Volumes (`db_data`, `nextcloud_data`) 💾
* **Security Layer:** UFW (Uncomplicated Firewall) with Default Deny policy 🔒
* **Automation:** Custom Bash Backup Script integrated via Cron Job 🤖

---

## 🚀 2. Deployment & Installation Guide

### 💻 Step 1: Base Virtual Machine Setup
1. Provision a new Virtual Machine in VirtualBox named `Ubuntu-Server-Khenjee`. 🖥️
2. Allocate system resources (minimum 2 vCPUs, 2GB+ RAM, 20GB+ Virtual Hard Disk). ⚙️
3. Attach the Ubuntu Server ISO and complete the OS installation. 💿
   * **Username:** `khen` 👤
   * **Password:** `0502` 🔑
4. Configure NAT networking with Port Forwarding rules: 🌐
   * **SSH:** Host Port `2222` $\rightarrow$ Guest Port `22` 🔌
   * **Web Access:** Host Port `8080` $\rightarrow$ Guest Port `8080` 🌍

### 🔌 Step 2: Remote Connection & Docker Setup
Connect to the server via PowerShell: 💻
```bash
ssh khen@127.0.0.1 -p 2222
sudo su
