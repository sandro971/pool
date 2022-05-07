FROM node:12.20.1-buster
COPY . /app
RUN apt-get update && apt-get install -y nodejs npm
RUN npm i npm@latest -g
RUN npm i
RUN npm i @vue/cli-service -g
EXPOSE 8080
