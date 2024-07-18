# Use the official CentOS Apache HTTP Server image
FROM amazonlinux:latest

# Download and unzip the web content
COPY photogenic.zip /var/www/html
WORKDIR /var/www/html
RUN yum install -y unzip && unzip photogenic.zip && rm photogenic.zip

# Expose port 80 for HTTP
EXPOSE 80

# Start Apache HTTP Server
CMD ["httpd", "-D", "FOREGROUND"]


