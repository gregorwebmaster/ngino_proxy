FROM nginx:1.18-alpine

RUN mkdir /workdir

COPY docker/proxy.template /workdir/proxy.template
COPY docker/entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh

WORKDIR /var/www

EXPOSE 80

ENTRYPOINT ["entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]