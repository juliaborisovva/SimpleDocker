# Simple Docker

## Part 1. Готовый докер

##### Взять официальный докер образ с **nginx** и выкачать его при помощи `docker pull`
##### Проверить наличие докер образа через `docker images`

![simple_docker](images/11.png)

Использование команд `docker pull` `docker images`

##### Запустить докер образ через `docker run -d [image_id|repository]`
##### Проверить, что образ запустился через `docker ps`

![simple_docker](images/12.png)

Использование команд `docker run -d nginx` `docker ps`

##### Посмотреть информацию о контейнере через `docker inspect [container_id|container_name]`

![simple_docker](images/13.png)
![simple_docker](images/14.png)
![simple_docker](images/15.png)
![simple_docker](images/16.png)
![simple_docker](images/17.png)

##### По выводу команды определить и поместить в отчёт размер контейнера, список замапленных портов и ip контейнера

- отчёт размер контейнера: 1.09kB (virtual 142MB)
- список замапленных портов: "80/tcp":null
- ip контейнера: 172.17.0.2

##### Остановить докер образ через `docker stop [container_id|container_name]`
##### Проверить, что образ остановился через `docker ps`

![simple_docker](images/18.png)

Использование команд `docker stop container_id` `docker ps -a`

##### Запустить докер с замапленными портами 80 и 443 на локальную машину через команду *run*

![simple_docker](images/19.png)

Использование команды `docker run -d --name nginx-server -p 80:80 -p 443:443 nginx`

##### Проверить, что в браузере по адресу *localhost:80* доступна стартовая страница **nginx**

![simple_docker](images/111.png)

80 - стандартный порт, по адресу localhost:80 открывается стартовая страница nginx.

##### Перезапустить докер контейнер через `docker restart [container_id|container_name]`
##### Проверить любым способом, что контейнер запустился

![simple_docker](images/110.png)

Использование команд `docker restart nginx-server` `docker ps`

## Part 2. Операции с контейнером

##### Прочитать конфигурационный файл *nginx.conf* внутри докер образа через команду *exec*

![simple_docker](images/21.png)

`docker exec container_id cat /etc/nginx/nginx.conf`

##### Создать на локальной машине файл *nginx.conf*

![simple_docker](images/22.png)

##### Настроить в нем по пути */status* отдачу страницы статуса сервера **nginx**

![simple_docker](images/23.png)

##### Скопировать созданный файл *nginx.conf* внутрь докер образа через команду `docker cp`

![simple_docker](images/24.png)

`docker cp nginx.conf container_id:/etc/nginx/nginx.conf`

##### Перезапустить **nginx** внутри докер образа через команду *exec*

![simple_docker](images/25.png)

`docker exec container_id nginx -s reload`

##### Проверить, что по адресу *localhost:80/status* отдается страничка со статусом сервера **nginx**

![simple_docker](images/26.png)

##### Экспортировать контейнер в файл *container.tar* через команду *export*

![simple_docker](images/27.png)

`docker export container_id > container.tar`

##### Остановить контейнер

![simple_docker](images/28.png)

`docker stop container_id`

##### Удалить образ через `docker rmi [image_id|repository]`, не удаляя перед этим контейнеры

![simple_docker](images/29.png)

`docker rmi -f image_id`

Флаг -f для принудительного удаления образа без удаления контейнеров

##### Удалить остановленный контейнер

![simple_docker](images/210.png)

Видно, что образ удалился. Теперь удалим контейнер.

![simple_docker](images/2101.png)

##### Импортировать контейнер обратно через команду *import*

![simple_docker](images/211.png)

`docker import --change 'CMD ["nginx", "-g", "daemon off;"]' container.tar nginx`

##### Запустить импортированный контейнер

![simple_docker](images/212.png)


##### Проверить, что по адресу *localhost:80/status* отдается страничка со статусом сервера **nginx**

![simple_docker](images/213.png)
