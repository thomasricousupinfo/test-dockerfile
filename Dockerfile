FROM ubuntu:latest

MAINTAINER Thomas Ricou (thomas.ricou@supinfo.com)

RUN apt-get update && apt-get install -y nginx

COPY code /var/www/html

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
