FROM node:10-alpine

WORKDIR /usr/src/app

COPY client/package*.json ./

RUN npm install

COPY . .

EXPOSE 5000

CMD ["npm", "start"]
