---

# 0x0E. Web stack debugging #1

## Description

This project involves debugging and fixing issues with the Nginx web server setup on an Ubuntu container. The goal is to ensure that Nginx is correctly configured to listen on port 80.

## Concepts

For this project, the following concepts are relevant:

- **Network basics**
- **Web stack debugging**

## Requirements

### General

- **Allowed editors**: `vi`, `vim`, `emacs`
- **Operating System**: All files will be interpreted on Ubuntu 20.04 LTS
- **File endings**: All files should end with a new line
- **README.md**: A `README.md` file at the root of the folder of the project is mandatory
- **Bash scripts**: All Bash script files must be executable
- **Shellcheck**: Your Bash scripts must pass Shellcheck without any error
- **Execution**: Your Bash scripts must run without error
- **Script header**: The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
- **Script comment**: The second line of all your Bash scripts should be a comment explaining what the script is doing
- **No wget**: You are not allowed to use `wget`

## Tasks

### Task 0: Nginx likes port 80

**Description**: Using your debugging skills, find out what’s keeping your Ubuntu container’s Nginx installation from listening on port 80. Feel free to install whatever tools you need, start and destroy as many containers as you need to debug the issue. Then, write a Bash script with the minimum number of commands to automate your fix.

**Requirements**:
- Nginx must be running and listening on port 80 of all the server’s active IPv4 IPs
- Write a Bash script that configures a server to the above requirements

**Steps to Debug and Fix the Issue**:

1. **Check if Nginx is installed**:
   ```bash
   nginx -v
   ```
   If Nginx is not installed, install it:
   ```bash
   sudo apt update
   sudo apt install nginx -y
   ```

2. **Check Nginx service status**:
   ```bash
   sudo systemctl status nginx
   ```
   If Nginx is not running, start the service:
   ```bash
   sudo systemctl start nginx
   ```

3. **Check Nginx configuration**:
   ```bash
   sudo nano /etc/nginx/sites-available/default
   ```
   Ensure the configuration file has the following lines:
   ```nginx
   server {
       listen 80 default_server;
       listen [::]:80 default_server;
       ...
   }
   ```

4. **Restart Nginx**:
   ```bash
   sudo systemctl restart nginx
   ```

5. **Write the Bash script**:
   Create a script `0-nginx_likes_port_80` with the following content:
   ```bash
   #!/usr/bin/env bash
   # Configures Nginx to listen on port 80

   # Install Nginx if it is not installed
   apt update -y
   apt install nginx -y

   # Update Nginx configuration
   sed -i 's/listen 80 default_server;/listen 80 default_server;/' /etc/nginx/sites-available/default
   sed -i 's/listen \[::\]:80 default_server;/listen \[::\]:80 default_server;/' /etc/nginx/sites-available/default

   # Restart Nginx
   systemctl restart nginx
   ```

6. **Make the script executable**:
   ```bash
   chmod +x 0-nginx_likes_port_80
   ```

7. **Run the script and verify**:
   ```bash
   ./0-nginx_likes_port_80
   curl 0:80
   ```

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/your_username/alx-system_engineering-devops.git
   cd alx-system_engineering-devops/0x0E-web_stack_debugging_1
   ```

2. Make the script executable and run it:
   ```bash
   chmod +x 0-nginx_likes_port_80
   ./0-nginx_likes_port_80
   ```

3. Verify that Nginx is listening on port 80:
   ```bash
   curl 0:80
   ```

## Author

- **Yazide Salhi** - [GitHub](https://github.com/yadsashel)

---
