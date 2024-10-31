FROM nginx:latest

WORKDIR /server

COPY ./server/main.c .

COPY ./nginx/nginx.conf /etc/nginx/

COPY run.sh .

RUN apt-get update && apt-get -y install gcc libfcgi-dev spawn-fcgi && \
    rm -rf /var/lib/apt/lists && \
    chown -R nginx:nginx /server && \
    chmod -R 755 /server && \
    touch /var/run/nginx.pid && \
    chown -R nginx:nginx /var/run/nginx.pid && \
    chown -R nginx:nginx /var/cache/nginx && \
    chown -R nginx:nginx /var/log/nginx

USER nginx
ENTRYPOINT [ "./run.sh" ]
CMD ["nginx", "-g", "daemon off;"]
