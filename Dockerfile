FROM nginx:stable-alpine

# delete the 
RUN rm /etc/nginx/conf.d/default.conf && rm /etc/nginx/conf.d/examplessl.conf

COPY content /usr/share/nginx/html
COPY conf /etc/nginx