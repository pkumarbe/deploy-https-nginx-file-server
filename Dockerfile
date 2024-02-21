FROM nginx:latest

# Copy your web application files into the image
#COPY /path/to/web/application /usr/share/nginx/html

# Copy the SSL certificate files into the image
COPY domain.crt /etc/nginx/certs/certificate.crt
COPY domain.key /etc/nginx/certs/certificate.key

# Configure Nginx to use the SSL certificate
RUN echo "server { \
    listen 443 ssl; \
    server_name example.com; \
    ssl_certificate /etc/nginx/certs/certificate.crt; \
    ssl_certificate_key /etc/nginx/certs/certificate.key; \
    location / { \
        root /usr/share/nginx/html; \
        autoindex on; \
    } \
}" > /etc/nginx/conf.d/default.conf

EXPOSE 443:8443
EXPOSE 8443:8443
EXPOSE 8443:443
