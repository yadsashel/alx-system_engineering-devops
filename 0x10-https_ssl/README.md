# 0x10. HTTPS SSL

## Description
This project focuses on securing web traffic using HTTPS and SSL. The aim is to understand the importance of encrypting traffic and how SSL termination works. We will configure a load balancer to handle SSL termination and ensure our web servers can serve encrypted traffic.

## Learning Objectives
By the end of this project, you should be able to explain the following concepts:
- The two main roles of HTTPS and SSL
- The purpose of encrypting traffic
- What SSL termination means

## Requirements
- All files are interpreted on Ubuntu 16.04 LTS
- All files should end with a new line
- A `README.md` file at the root of the project folder is mandatory
- All Bash scripts must be executable
- All Bash scripts must pass Shellcheck (version 0.3.7) without any error
- The first line of all Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all Bash scripts should be a comment explaining what the script does

## Tasks

### Task 0: World wide web
- **Description**: Configure your domain zone so that the subdomain `www` points to your load-balancer IP (lb-01). Add other subdomains and write a Bash script that displays information about subdomains.
- **Requirements**:
  - Add the subdomain `www` to your domain, pointing it to your `lb-01` IP.
  - Add the subdomain `lb-01` to your domain, pointing it to your `lb-01` IP.
  - Add the subdomain `web-01` to your domain, pointing it to your `web-01` IP.
  - Add the subdomain `web-02` to your domain, pointing it to your `web-02` IP.
  - Your Bash script must accept 2 arguments:
    - `domain`: The domain name to audit.
    - `subdomain`: The specific subdomain to audit (optional).
  - The script should output information about subdomains.
- **Example**:

The subdomain www is an A record and points to 54.234.69.196


### Task 1: HAproxy SSL termination
- **Description**: Configure HAproxy to handle encrypted traffic, unencrypt it, and pass it to the web servers.
- **Requirements**:
- HAproxy must listen on port TCP 443.
- HAproxy must accept SSL traffic.
- HAproxy must serve encrypted traffic that will return the `/` of your web server.
- When querying the root of your domain name, the page must return "Holberton School".
- Share your HAproxy configuration file (`/etc/haproxy/haproxy.cfg`).
- **Example**:

```bash
$ curl -sL https://www.yourdomain.com
Holberton School
```

## Resources
- [What is HTTPS?](https://example.com/what-is-https)
- [What are the 2 main elements that SSL is providing?](https://example.com/ssl-elements)
- [HAProxy SSL termination on Ubuntu 16.04](https://example.com/haproxy-ssl-termination)
- [SSL termination](https://example.com/ssl-termination)
- [Bash function](https://example.com/bash-function)
- `awk` and `dig` commands documentation.

## Author
- [Yazide Salhi](https://github.com/yadsashel)
