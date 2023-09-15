FROM nginx:stable
COPY conf/basic_nginx.conf /etc/nginx/nginx.conf
COPY certs/ /etc/nginx/ssl
ENTRYPOINT ["nginx", "-g", "daemons off"]
