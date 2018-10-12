# docker build -t olalofgren/olalofgren-test-app .
# docker run -p 8090:80 olalofgren/olalofgren-test-app

FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y nginx
ADD nginx.conf /etc/nginx/nginx.conf

ADD ./www-data /www-data

EXPOSE 80
CMD ["nginx"]
