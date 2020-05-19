FROM nginx:1.18-alpine

RUN mkdir /workdir

COPY docker/proxy.template /workdir/proxy.template
COPY docker/entrypoint.sh /workdir/entrypoint.sh

WORKDIR /var/www

EXPOSE 80

CMD ["/workdir/entrypoint.sh"]