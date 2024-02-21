# deploy-https-nginx-file-server
a docker container for nginx with https to be used for file server, browsing and download
# Create certificate 
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ./domain.key -out ./domain.crt -subj "/C=US/ST=State/L=City/O=Organization/CN=somename"

docker build -t my-nginx .
