FROM node:10-alpine

#Set the working directory
WORKDIR /client

#copy package.json files to working directory
COPY package*.json /client/

#Install dependencies
RUN npm install

#copy all files to the container at /client
COPY . /client/

#Make port 5000 available outside the container
EXPOSE 5000

#Run app when container launches
CMD ["npm", "start"]
