# Postmortem Report

## Issue Summary

Duration: August 10, 2024, 02:00 AM to 03:30 AM UTC
Impact: The web application experienced downtime, affecting 75% of users. The main page was not loading, and users encountered a "500 Internal Server Error."
Root Cause: A misconfiguration in the Nginx server caused the server to crash under a high load.
## Timeline

02:00 AM: Issue detected by automated monitoring, triggering an alert.
02:05 AM: Initial investigation began, focusing on the web server logs.
02:15 AM: Misleading investigation suggested a database issue, leading to 10 minutes spent verifying the database.
02:25 AM: The root cause was identified as a misconfiguration in the Nginx server.
02:30 AM: The issue was escalated to the DevOps team.
03:00 AM: Nginx configuration was corrected, and the server was restarted.
03:15 AM: System stability was monitored.
03:30 AM: Full service restored.
## Root Cause and Resolution

The Nginx server was configured with an incorrect worker process setting, which caused the server to become unresponsive under heavy load.
The issue was fixed by adjusting the worker process settings in the Nginx configuration file and restarting the server.
## Corrective and Preventative Measures

Action 1: Patch the Nginx server with the correct configuration.
Action 2: Add monitoring for Nginx worker processes to detect similar issues in the future.
Action 3: Review and update the Nginx configuration guidelines to prevent misconfiguration.
Action 4: Conduct a training session for the DevOps team on handling similar issues.
