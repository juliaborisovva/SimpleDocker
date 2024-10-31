FROM nginx:latest

WORKDIR /server

COPY ./server/main.c .

COPY ./nginx/nginx.conf /etc/nginx/

COPY run.sh .

RUN apt-get update && apt-get -y install gcc libfcgi-dev spawn-fcgi

ENTRYPOINT [ "./run.sh" ]
CMD ["nginx", "-g", "daemon off;"]
