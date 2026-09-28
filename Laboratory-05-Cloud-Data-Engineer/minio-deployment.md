# 📦 MinIO Deployment Documentation

## 🚀 1. Docker Deployment Command
To deploy the MinIO server container, the following exact Docker command was executed in the KillerCoda environment:

```bash
docker run -d --name minio-server -p 9000:9000 -p 9001:9001 -e "MINIO_ROOT_USER=admin" -e "MINIO_ROOT_PASSWORD=CloudNova2026!" bitnamilegacy/minio:2025.4.3-debian-12-r0
