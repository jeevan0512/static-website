# Use the official Nginx base image
FROM nginx:alpine

# Remove the default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website files into the container
COPY . /usr/share/nginx/html

# Expose port 80 to access the website
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
