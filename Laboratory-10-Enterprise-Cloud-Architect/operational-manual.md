# 📘 Enterprise Operational Manual: Nextcloud Private Cloud Infrastructure
**Author:** Khenjee Marzan Agmata | **Course:** CCM101 Cloud Computing (Mission 10)

---

## 🌐 1. System Architecture Overview
This operational manual serves as the official handover document for maintaining our enterprise-grade private cloud platform powered by **Nextcloud** and **MariaDB 10.11** on an **Ubuntu Server** VM[cite: 8].

---

## 🚀 2. Deployment & Installation Guide

### Step 📊 Base Virtual Machine & Network Setup
1. Provision Ubuntu Server VM (`khen` / `0502`).
2. Configure NAT Port Forwarding:
   * **SSH:** Host Port `2222` $\rightarrow$ Guest Port `22` 🔌
   * **Web Access:** Host Port `8080` $\rightarrow$ Guest Port `8080` 🌍

### Step 🐳 Docker Stack Orchestration (`docker-compose.yml`)
Run the deployment manifest inside `/home/khen/nextcloud`:
```bash
docker compose up -d
