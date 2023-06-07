# 42-inception [![jremy's 42 Inception Score](https://badge42.vercel.app/api/v2/cl27cprhd001109mercwbbu5l/project/2693015)](https://github.com/JaeSeoKim/badge42)


<div align="center">
<h1 align="center">
<img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/ec559a9f6bfd399b82bb44393651661b08aaf7ba/icons/folder-markdown-open.svg" width="100" />
<br>
42-inception <a href="https://github.com/JaeSeoKim/badge42"><a href="https://github.com/JaeSeoKim/badge42"><img src="https://badge42.vercel.app/api/v2/cl27cprhd001109mercwbbu5l/project/2693015" alt="jremy's 42 Inception Score" /></a>

</h1>
<h3 align="center">📍Dockerized Service Infrastructure Setup/h3>
<h3 align="center">⚙️ Developed with the software and tools below:</h3>

<p align="center">
<img src="https://img.shields.io/badge/GNU%20Bash-4EAA25.svg?style=for-the-badge&logo=GNU-Bash&logoColor=white" alt="GNU%20Bash" />
<img src="https://img.shields.io/badge/HTML5-E34F26.svg?style=for-the-badge&logo=HTML5&logoColor=white" alt="HTML5" />
<img src="https://img.shields.io/badge/Docker-2496ED.svg?style=for-the-badge&logo=Docker&logoColor=white" alt="Docker" />
<img src="https://img.shields.io/badge/Markdown-000000.svg?style=for-the-badge&logo=Markdown&logoColor=white" alt="Markdown" />
<img src="https://img.shields.io/badge/Express-000000.svg?style=for-the-badge&logo=Express&logoColor=white" alt="Express" />
<img src="https://img.shields.io/badge/JSON-000000.svg?style=for-the-badge&logo=JSON&logoColor=white" alt="JSON" />
</p>
</div>
---
## 📍 Overview
   
   In this project, I utilized Docker to create a service infrastructure consisting of NGINX, MariaDB, and WordPress. Additionally, I integrated Grafana, Prometheus, and Node Exporter for monitoring the performance of the infrastructure. I employed Docker Compose and followed containerization best practices to successfully complete this project.
   
---
## 💫 Features
   
- nginx: Reverse proxy server that acts as the entry point for the infrastructure, handling requests on port 443 and forwarding them to the appropriate services.

- mariadb: Container for MariaDB, a relational database management system used for storing data in the WordPress application.

- php: Container for WordPress, a popular content management system for building websites, serving the web pages and connecting to the MariaDB container for data storage.

- redis: Container for Redis, an in-memory data structure store, used for caching and improving performance in the application.

- adminer: Container for Adminer, a web-based database management tool, used for convenient database administration and interaction.

- vsftpd: Container for vsftpd, a lightweight FTP server, used for accessing and managing files in the WordPress volume.

- prometheus: Container for Prometheus, a monitoring and alerting toolkit, used for collecting and storing metrics data from various services.

- nodeexporter: Container for Node Exporter, a Prometheus exporter for hardware and OS metrics, used for collecting system-level metrics from the host.

- grafana: Container for Grafana, a data visualization and monitoring tool, used for creating dashboards and visualizing metrics collected by Prometheus.

- snake: Container for a Snake game, providing a fun addition to the infrastructure.
---

## 🚀 Getting Started

### ✅ Prerequisites

Before you begin, ensure that you have the following prerequisites installed:
   
   - docker

### 🖥 Installation

1. Clone the 42-inception repository:
```sh
git clone https://github.com/jremy42/42-inception
```

2. Change to the project directory:
```sh
cd 42-inception
```

3. launch application:
```sh
make
```

4. for normal usage : 
http://localhost:80
  
---
### 🤖 Stack docker

<p align="center">
  <img src="./docker_stack.png" width="100%">
</p>

## 👏 Acquired knowledge
  
- ✅ Setting up a mini-infrastructure using Docker and Docker Compose.
  
- ✅ Building custom Docker images using Dockerfiles.
  
- ✅ Creating and managing containers for various services, including NGINX, MariaDB, WordPress, Redis, Adminer, vsftpd, Prometheus, Node Exporter, Grafana, and a Snake game.
  
- ✅ Configuring volumes to store data for WordPress and databases.
  
- ✅ Creating a Docker network to connect the containers.
  
- ✅  Implementing TLS encryption with NGINX using TLSv1.2 or TLSv1.3 protocols.
  
- ✅ Following best practices for Dockerfile writing and handling containers' entrypoints.
  
- ✅ Utilizing environment variables and storing them in a .env file.
  
- ✅ Understanding the principles of container restart and crash recovery.
  
- ✅ Avoiding the use of "hacky patch" techniques and using proper daemon processes.
  
- ✅ Applying good practices for PID 1 and managing container processes.
  
- ✅ Setting up additional services as bonuses, such as FTP server (vsftpd) and Adminer.


