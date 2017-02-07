FROM nginx:stable-alpine

# delete the default config files 
RUN rm /etc/nginx/conf.d/default.conf

# copy the content to the html and 
COPY content /usr/share/nginx/html
COPY conf /etc/nginx

# mount the contents as volumes
VOLUME /usr/share/nginx/html
VOLUME /etc/nginx