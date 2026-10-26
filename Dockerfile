
# Use Nginx as the web server
FROM nginx:alpine

# Remove the default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files
COPY index.html /usr/share/nginx/html/index.html
COPY images/ /usr/share/nginx/html/images/

# Expose the web server port
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
