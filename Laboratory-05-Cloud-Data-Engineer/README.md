# ☁️ Laboratory Activity 5: The Cloud Data Engineer

<p align="center">
  <img src="https://img.shields.io/badge/DOCKER-2496ED?style=for-the-badge&logo=docker&logoColor=white" />
  <img src="https://img.shields.io/badge/MINIO-C71A36?style=for-the-badge&logo=minio&logoColor=white" />
  <img src="https://img.shields.io/badge/AWS_S3-569A31?style=for-the-badge&logo=amazons3&logoColor=white" />
  <img src="https://img.shields.io/badge/LINUX-FCC624?style=for-the-badge&logo=linux&logoColor=black" />
</p>

> Mission Objective: Deploy an S3-compatible, high-performance object storage server using MinIO on Docker, establish secure web console access, and manage unstructured media assets for a scalable application.

## Mission Overview
As part of the Cloud Data Engineering Team at CloudNova Technologies, this proof-of-concept project addresses the core challenge of ephemeral container storage. Web applications cannot safely store persistent media assets inside ephemeral web server containers. This activity establishes an independent object storage backend for hosting unstructured media assets.

## Objectives & Key Deliverables
- Differentiate between Block, File, and Object Storage.
- Deploy an S3-compatible Object Storage server (MinIO) using Docker.
- Access a cloud service via a web interface using port forwarding.
- Create a storage bucket and upload objects (files) to the cloud.
- Document cloud storage operations using Markdown.

## Tools & Technologies Used
- Docker
- MinIO
- KillerCoda Playground
- Markdown (.md)

## Repository Structure
Laboratory-05-Cloud-Data-Engineer/
├── README.md
├── storage-types-research.md
├── minio-deployment.md
├── reflection.md
└── screenshots/
    ├── minio-deployed.png
    └── minio-bucket-upload.png
