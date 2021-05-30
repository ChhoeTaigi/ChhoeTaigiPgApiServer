FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

# Inside docker container
EXPOSE 8080

RUN export NODE_ENV=production

CMD ["node", "server.js"]
