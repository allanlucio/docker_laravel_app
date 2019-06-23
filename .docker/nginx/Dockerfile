FROM nginx:1.15.0-alpine

RUN apk update && apk add --no-cache bash openssl nano
RUN rm /etc/nginx/conf.d/default.conf

ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

COPY ./nginx.tmpl /etc/nginx
RUN chmod +x /etc/nginx/nginx.tmpl

CMD ["dockerize", "-template", "/etc/nginx/nginx.tmpl:/etc/nginx/conf.d/nginx.conf","nginx", "-g", "daemon off;"]


