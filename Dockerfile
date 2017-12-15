FROM node:6-slim

RUN mkdir -p /app
WORKDIR /app

COPY package.json /app/
RUN npm install pm2 -g
RUN npm install

COPY . /app

EXPOSE 80
CMD [ "npm", "start" ]
