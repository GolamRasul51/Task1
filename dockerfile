# Use the official NGINX image as the base image
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove the default NGINX index.html file
RUN rm -rf ./index.html

# Copy the custom index.html file to the NGINX HTML directory
COPY index.html ./

# Expose port 80 to access the server
EXPOSE 80

# Start the NGINX server
CMD ["nginx", "-g", "daemon off;"]
