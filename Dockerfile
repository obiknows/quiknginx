# from the tiny alpines base image
FROM alpine

MAINTAINER sam

# install nginx, create user to run nginx, backup orig nginx.conf
RUN apk update && apk add nginx \
  && adduser -D -u 1000 -g 'www' www \
  && mkdir /www \
  && chown -R www:www /var/lib/nginx \
  && chown -R www:www /www \
  && mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig \
  && rm -f /etc/nginx/nginx.conf

# copy a configuration file from the current directory
ADD conf/nginx.conf /etc/nginx/

# switch to www [user]
USER www

# expose a port to the world
EXPOSE 80

# start nginx
CMD rc-service nginx start