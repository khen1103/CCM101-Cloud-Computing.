# Cloud Storage Types Research

## Storage Comparison Table

| Storage Type | Description (How it stores data) | Primary Use Case | Cloud Provider Example |
| :--- | :--- | :--- | :--- |
| **Block Storage** | Stores data in raw blocks on a hard drive or disk volume. | Best for databases and virtual machine boot disks. | AWS EBS[cite: 1] |
| **File Storage** | Organizes data into folders, subfolders, and files. | Best for shared office documents and network drives. | AWS EFS[cite: 1] |
| **Object Storage** | Stores data as independent objects inside flat buckets with metadata. | Best for massive unstructured data like photos, videos, and backups. | AWS S3[cite: 1] |

Object storage is the best choice for the client's photo-sharing application because it scales easily to hold millions of images without slowing down[cite: 1]. It allows fast web access and cheap storage for media files[cite: 1].
