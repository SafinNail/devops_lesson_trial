FROM nginx
RUN apt update && apt upgrade -y
RUN rm -f /etc/nginx/conf.d/default.conf
RUN mkdir -p /var/www/
RUN chown nginx:nginx /var/www/
COPY ./site.conf /etc/nginx/conf.d/
COPY ./landing/. /var/www/
