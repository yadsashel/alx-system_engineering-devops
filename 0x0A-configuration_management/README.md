# Configuration Management with Puppet

## Project Overview

This project focuses on understanding and implementing configuration management using Puppet. Puppet is a powerful tool that helps automate the administration of various systems and their configurations.

## General Requirements

- All files are interpreted on Ubuntu 20.04 LTS.
- All files must end with a new line.
- A README.md file is mandatory in the root directory.
- All Puppet manifests must pass without error `puppet-lint` version 2.1.1.
- All Puppet manifests must run without error.
- The first line of every Puppet manifest file must be a comment explaining the file's purpose.
- Puppet manifest files must end with the extension `.pp`.

## Installation Instructions

### Installing Puppet

```sh
sudo apt-get install -y ruby=1:2.7+1 --allow-downgrades
sudo apt-get install -y ruby-augeas
sudo apt-get install -y ruby-shadow
sudo apt-get install -y puppet
```

### Installing puppet-lint

If 

```sh gem install puppet-lint``` 

takes too long or doesn't work, try one of these alternative:

### Using apt-get

```sh
sudo apt-get update
sudo apt-get install puppet-lint
```

#### Using GitHub and Bundler

```sh
sudo apt-get install bundler
git clone https://github.com/rodjek/puppet-lint.git
cd puppet-lint
bundle install
```

#### Using Docker

```sh
docker pull puppet/puppet-lint
docker run --rm -v $(pwd):/code puppet/puppet-lint:latest /code/0-create_a_file.pp
docker run --rm -v $(pwd):/code puppet/puppet-lint:latest /code/1-install_a_package.pp
docker run --rm -v $(pwd):/code puppet/puppet-lint:latest /code/2-execute_a_command.pp
```

#Tasks

#### 0. Create a file

Using Puppet, create a file in /tmp.

Requirements:

File path is /tmp/school
File permission is 0744
File owner is www-data
File group is www-data
File contains I love Puppet

#### Example:
```sh
root@6712bef7a528:~# puppet-lint --version
puppet-lint 2.5.2
root@6712bef7a528:~# puppet-lint 0-create_a_file.pp
root@6712bef7a528:~# 
root@6712bef7a528:~# puppet apply 0-create_a_file.pp
Notice: Compiled catalog for 6712bef7a528.ec2.internal in environment production in 0.04 seconds
Notice: /Stage[main]/Main/File[school]/ensure: defined content as '{md5}f1b70c2a42a98d82224986a612400db9'
Notice: Finished catalog run in 0.03 seconds
root@6712bef7a528:~#
root@6712bef7a528:~# ls -l /tmp/school
-rwxr--r-- 1 www-data www-data 13 Mar 19 23:12 /tmp/school
root@6712bef7a528:~# cat /tmp/school
I love Puppetroot@6712bef7a528:~#
```
#### 1. Install a package
Using Puppet, install flask from pip3.

Requirements:

Install flask
Version must be 2.1.0

#### Example:

```sh
root@9665f0a47391:/# puppet apply 1-install_a_package.pp
Notice: Compiled catalog for 9665f0a47391 in environment production in 0.14 seconds
Notice: /Stage[main]/Main/Package[Flask]/ensure: created
Notice: Applied catalog in 0.20 seconds
root@9665f0a47391:/# flask --version
Python 3.8.10
Flask 2.1.0
Werkzeug 2.1.1
```

#### 2. Execute a command
Using Puppet, create a manifest that kills a process named killmenow.

Requirements:

Must use the exec Puppet resource
Must use pkill

### Example:

Terminal #0 - starting my process

```sh
root@d391259bf577:/# cat killmenow
#!/bin/bash
while [[ true ]]
do
    sleep 2
done

root@d391259bf577:/# ./killmenow
```

Terminal #1 - executing my manifest

```sh
root@d391259bf577:/# puppet apply 2-execute_a_command.pp
Notice: Compiled catalog for d391259bf577.hsd1.ca.comcast.net in environment production in 0.01 seconds
Notice: /Stage[main]/Main/Exec[killmenow]/returns: executed successfully
Notice: Finished catalog run in 0.10 seconds
root@d391259bf577:/# 
```

Terminal #0 - process has been terminated

```sh
root@d391259bf577:/# ./killmenow
Terminated
root@d391259bf577:/#
```

### Applying Manifests

```sh
sudo puppet apply 0-create_a_file.pp
sudo puppet apply 1-install_a_package.pp
sudo puppet apply 2-execute_a_command.pp
```
# Conclusion
By completing these tasks, you will gain practical experience with Puppet and understand how it can be used to manage system configurations effectively. If you have any questions or need further assistance, feel free to reach out.
