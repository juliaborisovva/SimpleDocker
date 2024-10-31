gcc main.c -lfcgi -o hellow
spawn-fcgi -a 127.0.0.1 -p 8080 ./hellow
docker run -d --name nginx-03 -p 81:81 nginx
cont_id=$(docker ps | grep nginx-03 | awk '{print $1}')
docker cp ../nginx/nginx.conf $cont_id:/etc/nginx/nginx.conf
docker exec $cont_id nginx -s reload
