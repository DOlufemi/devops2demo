FROM node:alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src

COPY package.json .
RUN npm install

COPY app /usr/src/app

EXPOSE 3000

CMD [ "npm", "start" ]

