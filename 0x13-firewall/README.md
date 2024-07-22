#This project involves configuring a firewall on a web server to control the traffic that can enter and leave the server. We will use the ufw (Uncomplicated Firewall) tool to set up firewall rules.

#Concepts Covered

##What is a Firewall:

 A firewall is a network security system that monitors and controls incoming and outgoing network traffic based on predetermined security rules.

##Web Stack Debugging: 

Understanding how to debug web stack issues, particularly those related to network connectivity and security.
##Learning Objectives

1.Understand the purpose and functionality of firewalls.

2.Configure ufw to block or allow specific types of traffic.

3.Test firewall rules using telnet and other network tools.

##Tasks

#Task 0: Block All Incoming Traffic Except Specific Ports

###Objective: Install ufw and configure it to block all incoming traffic except for ports 22 (SSH), 80 (HTTP), and 443 (HTTPS).

####Steps:

1.Install ufw:
```bash
Copy code
sudo apt-get install ufw
```

2.Allow SSH connections (port 22):

```bash
Copy code
sudo ufw allow 22/tcp
```

3.Allow HTTP connections (port 80):

````bash
Copy code
sudo ufw allow 80/tcp
```

4.Allow HTTPS connections (port 443):

```bash
Copy code
sudo ufw allow 443/tcp
```

5.Enable the firewall:

```bash
Copy code
sudo ufw enable
```

6.Check the status of ufw to ensure the rules are applied:
```bash
Copy code
sudo ufw status
```

#Output:

Save the ufw commands used in a file named 0-block_all_incoming_traffic_but.

##Testing and Debugging

Use telnet to check if the ports are open and accepting connections:

```bash
Copy code
telnet <server_ip> 22
telnet <server_ip> 80
telnet <server_ip> 443
```
If the connection is successful, it indicates the port is open and properly configured.

##Important Considerations

Be careful with firewall rules to avoid locking yourself out of the server, especially for SSH access (port 22).
If you mistakenly deny all traffic, including SSH, you may not be able to access your server remotely.
