#!/bin/bash 
# Generate 256-bit self signed SSL certificate

sudo su
cd /etc/ssl/certs
openssl req -x509 -nodes -sha256 -days 365 -newkey rsa:2048 -keyout private.key -out certificate.crt
openssl x509 -noout -text -in certificate.crt
# openssl dhparam -out dhparam.pem 4096

# Nginx SSL Config
   # ssl                  on;
   # ssl_certificate	/etc/ssl/certs/certificate.crt;
   # ssl_certificate_key  /etc/ssl/certs/private.key;

   # ssl_session_timeout  5m;

   # ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
   # ssl_ciphers 'EECDH+AESGCM:EDH+AESGCM:AES256+EECDH:AES256+EDH';
   # ssl_prefer_server_ciphers   on;
   # ssl_session_cache shared:SSL:10m;

   # ssl_dhparam /etc/ssl/certs/dhparam.pem;
