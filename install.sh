docker build -t mariadb-service ./mariadb
docker build -t react-service ./react
docker build -t express-service ./express

docker run -d --name mariadb mariadb-service
docker run -d --name react -p 80:80 react-service
docker run -d --name express express-service

docker network create library
docker network connect library mariadb
docker network connect library react
docker network connect library express
