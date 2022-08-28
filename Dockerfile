FROM nginx:latest 

WORKDIR /var/www/application

COPY ./app /var/www/application

COPY ./conf/vhost.conf /etc/nginx/conf.d/default.conf

RUN chmod 755 -R /var/www/application

EXPOSE 80

ENTRYPOINT [ "nginx" ]

CMD [ "-g", "daemon off;" ]