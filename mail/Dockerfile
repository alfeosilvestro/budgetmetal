#FROM ubuntu:latest
# MAINTAINER Alex Kent <alfeo.silvestro@live.com>

FROM yorkshirekev/postfix
MAINTAINER vackertech

RUN sed -i "s/myhostname = .*$/myhostname = metalpolis-mail/" /etc/postfix/main.cf

EXPOSE 25