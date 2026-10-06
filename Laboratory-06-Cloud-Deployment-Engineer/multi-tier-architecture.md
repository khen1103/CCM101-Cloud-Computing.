# 🌐 Multi-Tier Architecture Research

## 📌 What is a Two-Tier Architecture?
A two-tier architecture is a software design pattern where the application is split into two distinct, independent layers or tiers that can run on separate physical or virtual environments such as containers:
- 💻 The Client or Presentation Tier handled by the web application.
- 🗄️ The Data Tier handled by the database server.

---

## 🖥️ The Web / Application Tier
- 🎯 Role: This tier serves as the front-facing layer that users interact with directly. It handles incoming HTTP requests, runs application logic like Nextcloud, serves the graphical user interface, and processes user actions.

---

## 💾 The Database Tier
- 🎯 Role: This tier is responsible for securely storing, managing, and retrieving persistent data. In this deployment, it houses user accounts, permissions, metadata, and system configurations inside a MariaDB database.

---

## 🛡️ Why Separate Them?
Separating the web server and the database into two independent containers provides better scalability, easier maintenance, and enhanced security. If the web application experiences high traffic or crashes, the database remains isolated and stable, preventing total data corruption or system-wide failure.
