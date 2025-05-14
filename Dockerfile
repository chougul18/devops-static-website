# Step 1: Use a base image
FROM nginx:alpine

# Step 2: Copy your static website content to nginx default directory
COPY . /usr/share/nginx/html

# Step 3: Expose port
EXPOSE 80

# Step 4: Default command to run nginx
CMD ["nginx", "-g", "daemon off;"]
