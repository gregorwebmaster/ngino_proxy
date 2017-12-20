FROM gregorwebmaster/ngino

RUN rm /etc/nginx/vhosts/default.conf

COPY /proxys /etc/nginx/vhosts
COPY /ssl /etc/nginx/ssl
COPY /server /var/www

EXPOSE 80 443

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]