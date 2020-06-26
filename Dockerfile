FROM alpine
#WORKDIR /code
RUN apk update
RUN apk add --no-cache apache2 nano
RUN apk add git
RUN rm -rf /var/www/localhost/
RUN git clone https://github.com/carlostaffe/server-web.git /var/www/localhost/htdocs
#COPY index.html /var/www/localhost/htdocs/index.html 
CMD ["/usr/sbin/httpd", "-D" , "FOREGROUND", "-f" , "/etc/apache2/httpd.conf"]
