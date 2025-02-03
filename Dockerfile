# Use the official Nginx image
FROM nginx:stable-alpine

# Remove the default Nginx config
RUN rm /etc/nginx/conf.d/default.conf

# Copy your Nginx configuration file into the container
COPY nginx.conf /etc/nginx/conf.d/

# Cloud Run expects the container to listen on the port defined by PORT (default 8080)
# Nginx in this image listens on port 80 by default, so our config explicitly uses port 8080.
# Expose port 8080 (not strictly necessary, but good practice)
EXPOSE 8080

