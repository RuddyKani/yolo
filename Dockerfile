FROM node:10

WORKDIR /usr/src/ap

COPY client/package*.json ./

RUN npm install

COPY . .

EXPOSE 5000

CMD ["npm", "start"]
