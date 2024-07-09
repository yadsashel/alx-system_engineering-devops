# 0x0F. Load balancer

## Description

In this project, we are tasked with configuring and managing a load-balanced web server setup. The goal is to ensure redundancy, increase traffic capacity, and improve reliability by having multiple web servers behind a load balancer.

We will be working with two web servers (`web-01` and `web-02`) and one load balancer (`lb-01`). The project involves configuring Nginx on both web servers to include a custom HTTP response header, setting up HAProxy on the load balancer, and automating the process with Bash scripts and Puppet.

## Concepts

For this project, the following concepts are essential:
- Load balancer
- Web stack debugging

## Requirements

- All files will be interpreted on Ubuntu 16.04 LTS
- All files should end with a new line
- A `README.md` file at the root of the folder is mandatory
- All Bash script files must be executable
- Bash scripts must pass Shellcheck (version 0.3.7) without any error
- The first line of all Bash scripts should be `#!/usr/bin/env bash`
- The second line of all Bash scripts should be a comment explaining what the script does

## Resources

- [Introduction to load-balancing and HAproxy](https://www.digitalocean.com/community/tutorials/an-introduction-to-haproxy-and-load-balancing-concepts)
- [HTTP header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers)
- [Debian/Ubuntu HAProxy packages](https://haproxy.debian.net/)

## Tasks

### 0. Double the number of webservers

**Requirements:**

- Configure Nginx so that its HTTP response contains a custom header on `web-01` and `web-02`
- The custom HTTP header must be `X-Served-By`
- The value of the custom HTTP header must be the hostname of the server Nginx is running on
- Write `0-custom_http_response_header` to configure a new Ubuntu machine

Example:
```bash
sylvain@ubuntu$ curl -sI 34.198.248.145 | grep X-Served-By
X-Served-By: 03-web-01
sylvain@ubuntu$ curl -sI 54.89.38.100 | grep X-Served-By
X-Served-By: 03-web-02
sylvain@ubuntu$
```
File: 0-custom_http_response_header

1. Install your load balancer
Requirements:

Install and configure HAproxy on lb-01
Configure HAproxy to send traffic to web-01 and web-02
Distribute requests using a round-robin algorithm
Ensure HAproxy can be managed via an init script
Ensure servers are configured with the correct hostnames
Example:

```bash
Copy code
sylvain@ubuntu$ curl -Is 54.210.47.110
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Mon, 27 Feb 2017 06:12:17 GMT
Content-Type: text/html
Content-Length: 30
Last-Modified: Tue, 21 Feb 2017 07:21:32 GMT
Connection: keep-alive
ETag: "58abea7c-1e"
X-Served-By: 03-web-01
Accept-Ranges: bytes
```
File: 1-install_load_balancer

2. Add a custom HTTP header with Puppet
Requirements:

Automate the task of creating a custom HTTP header with Puppet
The custom HTTP header must be X-Served-By
The value of the custom HTTP header must be the hostname of the server Nginx is running on
Write 2-puppet_custom_http_response_header.pp to configure a new Ubuntu machine
File: 2-puppet_custom_http_response_header.pp

Author
Yazide Salhi
