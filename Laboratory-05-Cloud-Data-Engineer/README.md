# ☁️ Laboratory Activity 5: The Cloud Data Engineer

<p align="center">
  <img src="https://img.shields.io/badge/DOCKER-2496ED?style=for-the-badge&logo=docker&logoColor=white" />
  <img src="https://img.shields.io/badge/MINIO-C71A36?style=for-the-badge&logo=minio&logoColor=white" />
  <img src="https://img.shields.io/badge/AWS_S3-569A31?style=for-the-badge&logo=amazons3&logoColor=white" />
  <img src="https://img.shields.io/badge/LINUX-FCC624?style=for-the-badge&logo=linux&logoColor=black" />
</p>

> **Mission Objective:** Deploy an S3-compatible, high-performance object storage server using MinIO on Docker, establish secure web console access, and manage unstructured media assets for a scalable application.

---

## 📌 Mission Overview

As part of the Cloud Data Engineering Team at **CloudNova Technologies**, this proof-of-concept project addresses the core challenge of ephemeral container storage. Web applications cannot safely store persistent media assets inside ephemeral web server containers. This activity establishes an independent, production-grade object storage backend tailored for hosting unstructured media assets.

---

## 🎯 Objectives & Key Deliverables

- [x] **Differentiate Storage Tiers:** Compare Block, File, and Object storage architectures.
- [x] **Containerized Deployment:** Deploy MinIO S3-compatible object storage via Docker utilizing environment variables.
- [x] **Cloud Console Management:** Access the management web UI via port forwarding and configure secure storage buckets[cite: 1].
- [x] **Data Ingestion & Verification:** Upload sample files into isolated buckets as a proof of concept[cite: 1].
- [x] **Technical Documentation:** Maintain comprehensive Markdown logs and architectural evidence[cite: 1].

---

## 🛠️ Tools & Technologies Used

* **Docker:** Containerization engine for running isolated microservices[cite: 1].
* **MinIO:** High-performance, AWS S3-compatible object storage server[cite: 1].
* **KillerCoda Playground:** Cloud-based Linux environment for executing infrastructure tasks[cite: 1].
* **Markdown (.md):** Technical documentation and reporting format[cite: 1].

---

## 📂 Laboratory Structure & Navigation

```text
Laboratory-05-Cloud-Data-Engineer/
├── README.md
├── storage-types-research.md
├── minio-deployment.md
├── reflection.md
└── screenshots/
    ├── minio-deployed.png
    └── minio-bucket-upload.png
