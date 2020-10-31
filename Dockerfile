FROM node:12-alpine

# install some tools
RUN apk --no-cache add curl

# install pm2 as root and globally
RUN npm install -g pm2

# drop privileges
USER 1000

WORKDIR /app

EXPOSE 5001
