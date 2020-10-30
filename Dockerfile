FROM node:12-alpine

RUN apk --no-cache add curl
RUN npm install -g pm2

USER 1000

WORKDIR /app

EXPOSE 5001
