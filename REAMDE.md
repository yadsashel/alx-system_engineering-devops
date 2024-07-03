# 0x0C Web Server - DevOps & SysAdmin

## Overview

This project focuses on configuring a web server using Nginx on Ubuntu 16.04, with tasks designed to automate server setup and configuration.

## Tasks

1. **0-transfer_file**
   - Bash script to transfer a file from client to server using `scp`.
   - Usage: `0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY`

2. **1-install_nginx_web_server**
   - Bash script to install Nginx on `web-01` server.
   - Nginx should listen on port 80 and return "Hello World!" at root.

3. **2-setup_a_domain_name**
   - Provide a domain name (e.g., `example.tech`) and configure DNS with an A record to point to `web-01`'s IP.

4. **3-redirection**
   - Configure Nginx to redirect `/redirect_me` to another URL using a 301 redirect.

5. **4-not_found_page_404**
   - Configure Nginx to return a custom 404 page with the message "Ceci n'est pas une page".

## Requirements

- All scripts must be executable.
- Scripts should pass Shellcheck without errors.
- Use `vi`, `vim`, or `emacs` as editors.
- Follow strict formatting and comments as specified in each task.
- Ensure your scripts are tested in a controlled environment similar to the grading environment.

## Resources

- [How the web works](#)
- [Nginx Documentation](#)
- [DNS Basics](#)
- [RFC 7231 and RFC 7540](#) for HTTP references.

## Author

Yazide Salhi

## License

This project is licensed under the [MIT License](#) - replace with actual license if applicable.

