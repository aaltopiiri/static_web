# Version: 19.0.1

FROM ubuntu:18.04
LABEL maintainer="aaltopiiri@pm.me"
ENV REFRESHED_AT 2019-31-01
RUN apt-get -yqq update \
    && apt-get install -y nginx \
    && echo 'Hi, I am in your container' > /var/www/html/index.html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx"]