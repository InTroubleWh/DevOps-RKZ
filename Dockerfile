FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the static website files to the container's Nginx HTML directory
COPY ./ /usr/share/nginx/html

# Expose the port Nginx will use (default is 80)
EXPOSE 80

# Use Nginx's default command to start the server
CMD ["nginx", "-g", "daemon off;"]
