FROM nginxinc/nginx-unprivileged:stable-alpine

# Copy index.html into the NGINX directory
COPY index.html /usr/share/nginx/html

# Copy custom nginx.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose the required port (changed to 9090)
EXPOSE 9090
