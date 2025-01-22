# Use the official Nginx image as the base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy all the files in the current directory to the Nginx HTML folder
COPY . .

# Expose port 80 for the web server
EXPOSE 80

# Use the default Nginx command to run the server
CMD ["nginx", "-g", "daemon off;"]
