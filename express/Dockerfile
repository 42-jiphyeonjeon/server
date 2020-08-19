FROM debian:buster
MAINTAINER hyeyoo

RUN apt-get update && apt-get install -y vim curl npm git
RUN npm install express
RUN git clone -b develop --single-branch https://github.com/42-jiphyeonjeon/backend /backend
WORKDIR /backend
EXPOSE 3000

ENTRYPOINT ["npm", "start"]
