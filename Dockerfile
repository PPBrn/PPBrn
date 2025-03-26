FROM node:8-alpine

WORKDIR /var/app

COPY package.json .

RUN yarn

COPY . .
EXPOSE 8080
CMD [ "yarn", "start" ]
