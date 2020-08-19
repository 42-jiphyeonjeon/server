docker build -t mariadb-service ./mariadb
docker build -t web-service ./web
docker run -d --name mariadb mariadb-service
docker run -d --name web -p 80:80 web-service

git clone https://github.com/42-jiphyeonjeon/frontend ./web/srcs/frontend
git clone https://github.com/42-jiphyeonjeon/frontend ./web/srcs/backend

docker network create library
docker network connect library mariadb
docker network connect web
