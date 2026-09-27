# Checkpoint 2 - Research: Types of Cloud Storage

## Cloud Storage Comparison Table

| Storage Type | Description (How does it store data?) | Primary Use Case | Cloud Provider Example |
| :--- | :--- | :--- | :--- |
| **Block Storage** | Data is split into raw, identically sized blocks, each with its own address, managed directly by the operating system's file system[cite: 1]. | High-performance databases and virtual machine boot disks[cite: 1]. | AWS EBS (Elastic Block Store), Azure Disk |
| **File Storage** | Hierarchical file system structure that organizes data into files and folders using directories and subdirectories, accessed via network file protocols like NFS/SMB[cite: 1]. | Shared corporate network folders and collaborative development environments[cite: 1]. | AWS EFS (Elastic File System), Azure Files |
| **Object Storage** | Flat storage structure that manages data as distinct "objects" consisting of data, metadata, and a unique global ID, accessed via RESTful HTTP/S APIs[cite: 1]. | Massive unstructured data, media streaming, web assets, and data backups[cite: 1]. | AWS S3 (Simple Storage Service), MinIO |

## Explanation to the Client

Object Storage is the ideal and most cost-effective choice for storing your user-uploaded images because its flat namespace and API-driven architecture allow for infinite scalability without performance degradation[cite: 1]. Unlike block or file storage, it seamlessly handles millions of independent media files while providing high durability and fast web accessibility[cite: 1].
