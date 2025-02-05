# Use the official Nginx image as the base image
FROM docker.io/nginx:alpine

# Copy the custom index.html to the default Nginx HTML location
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
