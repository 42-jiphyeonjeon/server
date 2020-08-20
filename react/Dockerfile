FROM debian:buster
MAINTAINER hyeyoo

RUN apt-get update && apt-get install -y vim curl npm git
RUN git clone -b develop --single-branch https://github.com/42-jiphyeonjeon/frontend /frontend
WORKDIR /frontend
EXPOSE 80

ENTRYPOINT ["npm", "start"]
