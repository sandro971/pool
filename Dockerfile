FROM node:12.20.1-buster
RUN apt-get update && apt-get install -y nodejs npm
RUN npm i npm@latest -g
RUN npm i
RUN npm i @vue/cli-service -g
COPY . /app
EXPOSE 8080
