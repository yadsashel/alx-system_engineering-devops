# 0x1A. Application Server

## Description
This project involves setting up and managing an application server, which will serve dynamic content through the AirBnB clone. We will configure both development and production environments, using **Flask**, **Gunicorn**, and **Nginx**. The project builds on the AirBnB clone v2 (web framework) and v3 (RESTful API) and integrates them into a more complex web infrastructure using application servers.

## Concepts
- Web Server
- Application Server
- Web Stack Debugging

## Resources
- [Application server vs Web server](https://www.geeksforgeeks.org/difference-between-application-server-and-web-server/)
- [How to Serve a Flask Application with Gunicorn and Nginx on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-serve-flask-applications-with-gunicorn-and-nginx-on-ubuntu-16-04)
- [Running Gunicorn](https://docs.gunicorn.org/en/stable/run.html)
- [Upstart documentation](http://upstart.ubuntu.com/cookbook/)

## General Requirements
- All tasks will be done on **Ubuntu 16.04 LTS**.
- Your project should include a `README.md` file at the root.
- Python-related tasks should be done using **python3**.
- Bash scripts must:
  - Be executable.
  - Pass **Shellcheck** without errors.
  - Start with `#!/usr/bin/env bash` and include comments describing their function.

## Tasks

### 0. Set up development with Python
In this task, we set up the development environment on `web-01` for testing the Flask application.

#### Steps:
1. Ensure task 3 of the SSH project is complete for `web-01`.
2. Install the `net-tools` package: `sudo apt install -y net-tools`.
3. Clone your **AirBnB_clone_v2** repository to `web-01`.
4. Modify the file `web_flask/0-hello_route.py` to serve content at `/airbnb-onepage/` on port 5000.
5. The Flask application object should be named `app`.

**Example**:
```bash
python3 -m web_flask.0-hello_route
```


Here’s a README.md for your project. It includes an overview of the project, setup instructions, and task descriptions:

markdown
Copy code
# 0x1A. Application Server

## Description
This project involves setting up and managing an application server, which will serve dynamic content through the AirBnB clone. We will configure both development and production environments, using **Flask**, **Gunicorn**, and **Nginx**. The project builds on the AirBnB clone v2 (web framework) and v3 (RESTful API) and integrates them into a more complex web infrastructure using application servers.

## Concepts
- Web Server
- Application Server
- Web Stack Debugging

## Resources
- [Application server vs Web server](https://www.geeksforgeeks.org/difference-between-application-server-and-web-server/)
- [How to Serve a Flask Application with Gunicorn and Nginx on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-serve-flask-applications-with-gunicorn-and-nginx-on-ubuntu-16-04)
- [Running Gunicorn](https://docs.gunicorn.org/en/stable/run.html)
- [Upstart documentation](http://upstart.ubuntu.com/cookbook/)

## General Requirements
- All tasks will be done on **Ubuntu 16.04 LTS**.
- Your project should include a `README.md` file at the root.
- Python-related tasks should be done using **python3**.
- Bash scripts must:
  - Be executable.
  - Pass **Shellcheck** without errors.
  - Start with `#!/usr/bin/env bash` and include comments describing their function.

## Tasks

### 0. Set up development with Python
In this task, we set up the development environment on `web-01` for testing the Flask application.

#### Steps:
1. Ensure task 3 of the SSH project is complete for `web-01`.
2. Install the `net-tools` package: `sudo apt install -y net-tools`.
3. Clone your **AirBnB_clone_v2** repository to `web-01`.
4. Modify the file `web_flask/0-hello_route.py` to serve content at `/airbnb-onepage/` on port 5000.
5. The Flask application object should be named `app`.

**Example**:
```bash
python3 -m web_flask.0-hello_route
1. Set up production with Gunicorn
Now that development is set up, configure Gunicorn on web-01 for production.

Steps:
Install Gunicorn and any required libraries globally.
Serve the same content at /airbnb-onepage/ using Gunicorn.
Ensure the Flask application object is named app.

Example:
``` 
gunicorn --bind 0.0.0.0:5000 web_flask.0-hello_route:app
```

Here’s a README.md for your project. It includes an overview of the project, setup instructions, and task descriptions:

markdown
Copy code
# 0x1A. Application Server

## Description
This project involves setting up and managing an application server, which will serve dynamic content through the AirBnB clone. We will configure both development and production environments, using **Flask**, **Gunicorn**, and **Nginx**. The project builds on the AirBnB clone v2 (web framework) and v3 (RESTful API) and integrates them into a more complex web infrastructure using application servers.

## Concepts
- Web Server
- Application Server
- Web Stack Debugging

## Resources
- [Application server vs Web server](https://www.geeksforgeeks.org/difference-between-application-server-and-web-server/)
- [How to Serve a Flask Application with Gunicorn and Nginx on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-serve-flask-applications-with-gunicorn-and-nginx-on-ubuntu-16-04)
- [Running Gunicorn](https://docs.gunicorn.org/en/stable/run.html)
- [Upstart documentation](http://upstart.ubuntu.com/cookbook/)

## General Requirements
- All tasks will be done on **Ubuntu 16.04 LTS**.
- Your project should include a `README.md` file at the root.
- Python-related tasks should be done using **python3**.
- Bash scripts must:
  - Be executable.
  - Pass **Shellcheck** without errors.
  - Start with `#!/usr/bin/env bash` and include comments describing their function.

## Tasks

### 0. Set up development with Python
In this task, we set up the development environment on `web-01` for testing the Flask application.

#### Steps:
1. Ensure task 3 of the SSH project is complete for `web-01`.
2. Install the `net-tools` package: `sudo apt install -y net-tools`.
3. Clone your **AirBnB_clone_v2** repository to `web-01`.
4. Modify the file `web_flask/0-hello_route.py` to serve content at `/airbnb-onepage/` on port 5000.
5. The Flask application object should be named `app`.

**Example**:
```bash
python3 -m web_flask.0-hello_route
1. Set up production with Gunicorn
Now that development is set up, configure Gunicorn on web-01 for production.

Steps:
Install Gunicorn and any required libraries globally.
Serve the same content at /airbnb-onepage/ using Gunicorn.
Ensure the Flask application object is named app.
Example:

bash
Copy code
gunicorn --bind 0.0.0.0:5000 web_flask.0-hello_route:app
2. Serve a page with Nginx
Configure Nginx to serve the Flask application on port 80 and proxy requests to Gunicorn.

Steps:
Configure Nginx to serve content from /airbnb-onepage/ at port 80.
Proxy requests to the Gunicorn instance running on port 5000.
Ensure Nginx is publicly accessible by rebooting the server if needed.
Example:
```
curl 35.231.193.217/airbnb-onepage/
```

4. Serve your API with Nginx
Set up Nginx to serve the AirBnB_clone_v3 API.

Steps:
Clone your AirBnB_clone_v3 repository.
Configure Nginx to proxy requests to /api/ to a Gunicorn instance on port 5002.
Ensure that Nginx serves the API locally and via its public IP on port 80.
Example:
```
curl 35.231.193.217/api/v1/states
```
GitHub Repository
All code for this project should be stored in the following GitHub repository:

Repository: alx-system_engineering-devops
Directory: 0x1A-application_server
