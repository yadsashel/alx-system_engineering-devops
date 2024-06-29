# Project: 0x0B. SSH

## Overview
This project is part of the ALX Africa curriculum for software engineering. The focus is on setting up and using SSH (Secure Shell) to securely access remote servers.

## Objectives
- Understand the importance and usage of SSH.
- Generate and use RSA key pairs for authentication.
- Connect to a remote server using SSH.

## Steps
1. **Generate RSA Key Pair:**
   ```bash
   ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

### Add Public Key to Remote Server:

```bash
Copy code
ssh-copy-id username@remote_server_ip
Connect to Remote Server Using SSH:
```

```bash
Copy code
ssh username@remote_server_ip
```

## Files

# 0-use_a_private_key: Script to use a private key for SSH connection.
# 1-create_ssh_key_pair: Script to create an RSA key pair.
# 2-ssh_config: SSH configuration file to set up connection parameters
