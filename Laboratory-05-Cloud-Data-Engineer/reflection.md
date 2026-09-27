# Mission 5 Reflection

Object storage is significantly better suited for storing millions of photos compared to a traditional block storage hard drive because it organizes data flatly into buckets using unique identifiers and metadata, rather than strict folder hierarchies or rigid disk sectors. This design prevents performance bottlenecks and allows the storage system to scale infinitely as user uploads grow. 

Using Docker made deploying the MinIO storage server remarkably fast and efficient. Instead of manually installing dependencies, configuring Linux services, and dealing with compatibility issues, a single `docker run` command instantly launched a fully isolated, production-ready storage environment complete with pre-configured ports and credentials.

In cloud storage, a "bucket" is a logical container or folder used to store objects (files and metadata). It acts as the top-level namespace for organizing data within an object storage system.

Large enterprise companies ensure their object storage data is not lost during physical server crashes by using multi-site replication and data redundancy. They automatically copy data across multiple physical data servers and geographic regions, ensuring that even if one complete data center fails, the objects remain fully safe and accessible.

My confidence in navigating the Linux command line is growing steadily. Typing commands, checking running containers, managing directories, and verifying server outputs manually has made terminal environments feel much more natural and powerful to use.
