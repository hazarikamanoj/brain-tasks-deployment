# Use standard lightweight Nginx to serve pre-built static files
FROM nginx:alpine

# Copy the pre-built dist folder contents straight to Nginx public server directory
COPY dist/ /usr/share/nginx/html/

# Expose port 80 internally
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
