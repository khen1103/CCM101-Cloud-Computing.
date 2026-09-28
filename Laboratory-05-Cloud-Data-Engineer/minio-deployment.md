# MinIO Deployment Documentation

## 1. Docker Deployment Command
To deploy the MinIO server container, the following exact Docker command was executed in the KillerCoda environment:

\`\`\`bash
docker run -d --name minio-server -p 9000:9000 -p 9001:9001 -e "MINIO_ROOT_USER=admin" -e "MINIO_ROOT_PASSWORD=CloudNova2026!" bitnamilegacy/minio:2025.4.3-debian-12-r0
\`\`\`

## 2. Web Console Port
* **Port Number:** **9001** (used to access the MinIO Web Management Console via port forwarding / Traffic utility).
* *Note:* Port `9000` was also mapped for S3 API client requests.

## 3. Bucket Name
* **Created Bucket:** \`client-photos\`

## 4. Explanation of Environment Variables (-e flags)
* `-e "MINIO_ROOT_USER=admin"`: Sets the master administrator username required to log into the MinIO server and web console.
* `-e "MINIO_ROOT_PASSWORD=CloudNova2026!"`: Defines the secure administrative password associated with the root user to restrict unauthorized access to the storage environment.

