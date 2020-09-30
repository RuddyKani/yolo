FROM node:10-alpine

#Set the working directory
WORKDIR /yolo

#copy package.json files to working directory
COPY client/package*.json ./

#Install dependencies
RUN npm install

#copy all files to working directory
COPY . .

EXPOSE 5000

CMD ["npm", "start"]
