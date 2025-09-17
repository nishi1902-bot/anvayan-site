# Use the official Nginx image
FROM nginx:alpine

# Remove the default nginx.conf
RUN rm /etc/nginx/conf.d/default.conf

# Copy our nginx.conf to the container
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy all site files to nginx html folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
