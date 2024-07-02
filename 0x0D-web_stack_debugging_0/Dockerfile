# Use the official Ubuntu image as the base image
FROM ubuntu:16.04

# Update the package list and install Apache
RUN apt-get update && apt-get install -y apache2

# Expose port 80 to the host
EXPOSE 80

# Start the Apache service when the container starts
CMD ["apache2ctl", "-D", "FOREGROUND"]
