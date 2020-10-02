## Yolo Containerized e-commerce website

### Base Images
node:10-alpine - For node due to smaller size
mongo - for mongodb


### Docker directives
#### Client
Download node Image  
Set working directory
Copy package.json files to working directory  
Install dependencies  
copy all files to current directory
Expose port 3000 for react  
Run start command


#### Backend
Download node Image
Set working directory
Copy package.json files to working directory  
Install dependencies  
copy all files to current directory
Expose port 5000  
Run start command



#### Database
Run mongo Image
Set volume for persistence  
Set port 27017  
Set network to communicate with the other containers  


### Docker-compose Network
For client  
Depends on Backend  
Set network

For Backend
Depends on Database
Set network

Network set to use driver:bridge  


### Volumes
Volume set for database container for data persistence on addition of product

## Setup/Installation Requirements
Clone repository from github  

git clone https://github.com/RuddyKani/yolo.git

cd yolo

sudo docker-compose build

sudo docker-compose up

## Known Bugs
Container failing with error MongooseServerSelectionError: connect ECONNREFUSED 127.0.0.1:27017 Research on fixing  
Issue pointing to known bug 'This is an issue with react-scripts@3.4.1'
