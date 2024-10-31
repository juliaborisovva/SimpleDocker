cont_id=$(docker ps | grep nginx-03 | awk '{print $1}')
docker stop $cont_id
docker rm $cont_id
kill -15 $(ps ax | grep -v "grep" | grep "hellow" | awk '{print $1}')
rm hellow
