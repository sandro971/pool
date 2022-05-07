FROM node:12.20.1-buster
RUN apt-get update nodejs npm
RUN npm i npm@latest -g
RUN npm i @vue/cli-service -g
COPY . /app
EXPOSE 8080
