FROM nginxinc/nginx-unprivileged:stable-alpine

# Copy index.html into the NGINX directory
COPY index.html /usr/share/nginx/html

# Fix permission issues: Ensure the copied files have correct permissions


# Expose the required port (typically 80 for HTTP)
EXPOSE 80
