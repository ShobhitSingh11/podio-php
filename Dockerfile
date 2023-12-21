FROM php:7.4-apache

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the contents of the current directory into the container at /var/www/html
COPY . /var/www/html

# Install any needed extensions
RUN docker-php-ext-install mysqli pdo_mysql

# Make port 80 available to the world outside this container
EXPOSE 80

# Run apache when the container launches
CMD ["apache2-foreground"]