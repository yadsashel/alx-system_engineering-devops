#!/usr/bin/env bash

ssh-keygen -f "/root/.ssh/known_hosts" -R "54.234.69.196"
ssh -o StrictHostKeyChecking=no -i ~/.ssh/school ubuntu@54.234.69.196 "mkdir -p ~/.ssh && echo '$(cat ~/.ssh/school.pub)' >> ~/.ssh/authorized_keys"
