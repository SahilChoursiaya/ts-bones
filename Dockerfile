# syntax=docker/dockerfile:1
   
FROM node:slim
WORKDIR /app
# COPY ./package.json ./yarn.lock /app
COPY . . 
RUN yarn install --pure-lockfile

EXPOSE 8080
CMD ["yarn", "start:dev"]
