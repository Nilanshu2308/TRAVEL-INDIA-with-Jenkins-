# Use official Nginx image as base
FROM nginx:alpine

# Remove default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files into the Nginx HTML directory
COPY . /usr/share/nginx/html

# Expose port 80 (default for Nginx)
EXPOSE 80
