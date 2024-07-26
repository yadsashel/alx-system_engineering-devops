#0x12. Web stack debugging #2

---

##Description

This project focuses on debugging a web stack. The main tasks involve running software as another user and ensuring that Nginx is running under a less privileged user instead of root for security purposes.

##Requirements

All your files will be interpreted on Ubuntu 20.04 LTS.
All your files should end with a new line.
A README.md file at the root of the folder of the project is mandatory.
All your Bash script files must be executable.
Your Bash scripts must pass Shellcheck without any error.
Your Bash scripts must run without error.
The first line of all your Bash scripts should be exactly #!/usr/bin/env bash.
The second line of all your Bash scripts should be a comment explaining what the script is doing.

##Tasks

###Task 0: Run software as another user

Objective: Write a Bash script that accepts one argument and runs the whoami command under the user passed as an argument.
File: 0-iamsomeoneelse

Example Usage:

```bash
 ./0-iamsomeoneelse <username>
```

###Task 1: Run Nginx as Nginx

Objective: Fix the container so that Nginx is running as the nginx user.
Nginx must be running as nginx user.
Nginx must be listening on all active IPs on port 8080.
You cannot use apt-get remove.
File: 1-run_nginx_as_nginx

Usage
To test your scripts, follow these steps:

Task 0:

```bash
Copy code
chmod +x 0-iamsomeoneelse
./0-iamsomeoneelse <username>
```
Task 1:

```bash
Copy code
chmod +x 1-run_nginx_as_nginx
./1-run_nginx_as_nginx
```

###Author
Yazide Salhi
