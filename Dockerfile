from php:7.4-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

#RUN echo "cd /usr/local/src" >> ~/.bashrc

COPY ./src/ /var/www/html/
EXPOSE 80



#RUN apt-get update
#RUN apt install -y git && git config --global user.name "D2A-2020" && git config --global user.email "davidadriansantosl$

#RUN cd /usr/local/src && git init && git clone --branch master https://github.com/D2A-2020/nss.git

#ENV APACHE_DOCUMENT_ROOT /usr/local/src/nss/src
#RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
#RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
