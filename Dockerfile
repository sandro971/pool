FROM node:12.20.1-buster
COPY . /app
RUN apt-get update && apt-get install -y nodejs npm
RUN cd /app && npm i && npm i @vue/cli-service -g && npm i npm@latest -g
EXPOSE 8080
