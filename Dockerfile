# Use the lightweight Nginx web server
FROM Nginx:alpine

# Copy all the files from your folder into the Nginx web folder
COPY . /usr/share/nginx/html

# Tell the container to listen on port 80
EXPOSE 80