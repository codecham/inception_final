FROM debian:buster

RUN echo -e "\033[32mNginx Dockerfile...\033[0m"

RUN apt-get update && apt-get install -y nginx \
	&& rm -rf /var/lib/apt/lists/*
# Copy the configuration file to the appropriate directory
COPY tools/nginx.conf /etc/nginx/nginx.conf

# Copy SSL Certificates to the appropriate directory
COPY tools/ssl/dcorenti.crt /etc/nginx/ssl/
COPY tools/ssl/dcorenti_private.key /etc/nginx/ssl

# Expose necessary ports
EXPOSE 443

# Start NGINX when the container is run
CMD ["nginx", "-g", "daemon off;"]
