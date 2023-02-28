# Use an official Ubuntu runtime as a parent image
FROM ubuntu:latest

# Update the package list and install Apache
RUN apt-get update && \
    apt-get install -y apache2 && \
    rm -rf /var/lib/apt/lists/*

# Copy our custom index.html file to the container
COPY index.html /var/www/html/index.html

# Expose the default HTTP port
EXPOSE 80

# Start the Apache service when the container starts
CMD ["apachectl", "-D", "FOREGROUND"]
