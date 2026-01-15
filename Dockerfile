# Use nginx to serve static files
FROM nginx:alpine

# Copy your static site into nginx's default web root
COPY . /usr/share/nginx/html

# Optional: remove default nginx index page (not required, but nice)
# RUN rm -f /usr/share/nginx/html/index.html

# Expose web port
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
