# Web Infrastructure Design Project

## Overview

This project aims to explore concepts related to web infrastructure design, including DNS, monitoring, web servers, network basics, load balancers, and servers. The tasks involve designing and explaining various web infrastructure setups, addressing issues such as single points of failure (SPOF), security, scalability, and monitoring.

## Tasks

#### 0. Simple Web Stack

Designed a one-server web infrastructure hosting the website www.foobar.com.
Components: 1 server, 1 web server (Nginx), 1 application server, 1 database (MySQL).
Addressed issues such as SPOF, downtime during maintenance, and scalability limitations.

#### 1. Distributed Web Infrastructure

Designed a three-server web infrastructure hosting www.foobar.com.
Added components: 2 servers, 1 load balancer (HAproxy), 1 database (MySQL), 1 set of application files.
Explained distribution algorithm, active-active/active-passive setup, and primary-replica cluster for the database.
Identified SPOFs, security issues, and lack of monitoring as potential issues.

#### 2. Secured and Monitored Web Infrastructure

Designed a three-server web infrastructure for www.foobar.com with enhanced security and monitoring.
Added components: 3 firewalls, SSL certificate for HTTPS, 3 monitoring clients.
Explained the purpose of firewalls, HTTPS traffic, and monitoring tools.
Addressed issues related to SSL termination, single MySQL server for writes, and uniform server components.

#### 3. Scale Up (Advanced)

Deployed a scalable infrastructure with split components (web server, application server, database) on separate servers.
Added a load balancer configured as a cluster.
Explained the rationale behind each additional element.

## Repository Structure

### 0x09-web_infrastructure_design

#### 0-simple_web_stack: Contains the design for a simple web stack.
#### 1-distributed_web_infrastructure: Contains the design for a distributed web infrastructure.
#### 2-secured_and_monitored_web_infrastructure: Contains the design for a secured and monitored web infrastructure.
#### 3-scale_up: Contains the design for scaling up the web infrastructure.

## How to Use

#### 1.Clone the repository:

```bash
git clone <repository_url>
```

#### 2.Navigate to the desired task directory.
#### 3.Review the README and task files for detailed instructions and explanations.
#### 4.Complete the tasks as per the requirements.
#### 5.Capture screenshots of whiteboard diagrams and upload them to the designated locations.
#### 6.Push your completed work to GitHub.
#### 7.Request manual QA review if needed.
