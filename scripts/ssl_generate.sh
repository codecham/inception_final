openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /home/dcorenti/Documents/ssl/certificate.crt -keyout /home/dcorenti/Documents/ssl/private.key -subj "/C=BE/ST=Brussels/L=Brussels/O=42 School/OU=dcorenti/CN=dcorenti.42.fr"
