### README for Webstack Monitoring Project

---

## Project: 0x18. Webstack Monitoring

**Description:**  
This project involves setting up monitoring for a webstack, which includes both application and server monitoring. You will use tools like Datadog to monitor web servers and create dashboards to visualize different metrics.

---

### Learning Objectives:
By the end of this project, you should be able to:
1. Understand the importance of monitoring.
2. Differentiate between application and server monitoring.
3. Work with access logs and error logs on a web server such as Nginx.

---

### Requirements:
- Use **vi**, **vim**, or **emacs** as your editor.
- All files must run on Ubuntu 16.04 LTS.
- Create a `README.md` file at the root of your project folder.
- Bash scripts must pass **Shellcheck** (version 0.3.7).
- First line of Bash scripts must be `#!/usr/bin/env bash`.
- Second line should explain what the script does.

---

### Tasks

#### Task 0: Sign Up for Datadog and Install the Datadog Agent
- Sign up at [Datadog](https://www.datadoghq.com/).
- Use the **US1 region** for this project.
- Install the **Datadog agent** on your server **web-01**.
- Create an **application key** and copy-paste your **Datadog API key** and **application key** into your ALX Intranet profile.

#### Task 1: Monitor Some Metrics
- Set up system monitors within Datadog.
- Track metrics like reads/writes per second to understand server performance.

#### Task 2: Create a Dashboard
- Create a new Datadog dashboard with **at least 4 widgets** monitoring different metrics.
- Save the dashboard ID in a file named `2-setup_datadog`.

---

### How to Run the Project:

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/alx-system_engineering-devops.git
    ```

2. Change to the project directory:
    ```bash
    cd alx-system_engineering-devops/0x18-webstack_monitoring
    ```

3. Follow the task-specific steps for each of the above tasks.

---

### Files:

- `2-setup_datadog`: Contains the ID of the Datadog dashboard you create.

---

### Resources:
- [What is Server Monitoring](https://www.datadoghq.com)
- [Nginx Logging and Monitoring](https://docs.datadoghq.com/integrations/nginx/)
