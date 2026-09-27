# Storage Types Research: Block vs. File vs. Object Storage

## Introduction
In cloud computing and data engineering, choosing the right storage architecture is critical for performance, scalability, cost, and accessibility. This document outlines the three primary cloud storage types: Block Storage, File Storage, and Object Storage.

---

## 1. Block Storage
* **Definition:** Raw storage volumes where data is split into identically sized blocks. Each block has its own unique address but no file-system structure of its own at the lower level.
* **How it Works:** The operating system manages the file system, breaking files down and distributing the blocks across storage media. When requested, blocks are reassembled.
* **Use Cases:** 
  * High-performance database storage (e.g., MySQL, PostgreSQL).
  * Enterprise virtual machine boot volumes (e.g., AWS EBS, Azure Disk).
  * High IOPS workloads requiring low latency.
* **Pros & Cons:**
  * **Pros:** Extremely fast, low latency, highly customizable file system control.
  * **Cons:** Expensive, difficult to share data directly across multiple instances without a specialized cluster file system.

---

## 2. File Storage
* **Definition:** Hierarchical storage architecture that organizes data into files and folders, mimicking a traditional filing cabinet or desktop directory tree.
* **How it Works:** Files are stored with metadata (name, size, creation date) and organized into directories and subdirectories. Access is governed by network file protocols like NFS (Network File System) or SMB (Server Message Block).
* **Use Cases:**
  * Shared network folders for corporate employees.
  * Content Management Systems (CMS) and web server shared assets.
  * Development environments requiring shared code directories.
* **Pros & Cons:**
  * **Pros:** Easy to understand and navigate, excellent for user collaboration and shared file access.
  * **Cons:** Harder to scale horizontally when dealing with billions of files; performance can degrade as directory trees grow massive.

---

## 3. Object Storage
* **Definition:** Flat data storage structure designed to handle massive amounts of unstructured data (images, videos, backups, logs). Data is managed as distinct "objects" rather than files or blocks.
* **How it Works:** Every object consists of the data itself, a variable amount of metadata, and a unique global identifier (key/URL). Data is accessed via RESTful APIs (HTTP/HTTPS) rather than standard file paths.
* **Use Cases:**
  * Large-scale web application asset storage (e.g., user profile pictures, media streaming).
  * Data lakes and big-data analytics.
  * Long-term archiving, disaster recovery, and backups.
* **Pros & Cons:**
  * **Pros:** Infinitely scalable, highly cost-effective, rich metadata search capabilities, accessible over the web via APIs.
  * **Cons:** Not suitable for random write operations or low-latency database transactions (cannot easily modify just a "byte" inside an object; you must replace the whole object).

---

## Summary Comparison Table

| Feature | Block Storage | File Storage | Object Storage |
| :--- | :--- | :--- | :--- |
| **Structure** | Raw Blocks (Volumes) | Hierarchical Files & Folders | Flat Namespace (Objects & Metadata) |
| **Access Protocol** | SCSI, SAN, iSCSI | NFS, SMB | HTTP/REST API (S3 compatible) |
| **Scalability** | Moderate (Tied to compute limits) | High (Up to file system limits) | Massive / Practically Infinite |
| **Primary Use Case** | Databases & VM Boot Disks | Shared Corporate Directories | Unstructured Data, Media & Backups |
