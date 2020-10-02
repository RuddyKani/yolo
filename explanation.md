## Yolo Containerized e-commerce website

###Base Images
node:10-alpine - For node due to smaller size
mongo - for mongodb

###Docker directives
####client
Download node Image
Set working directory
Copy package.json files to working directory
Install dependencies
copy all files to current directory
Expose port 3000 for react
Run start command


####Backend
Download node Image
Set working directory
Copy package.json files to working directory
Install dependencies
copy all files to current directory
Expose port 5000
Run start command



####Database
Run mongo Image
Set volume for persistence
Set port 27017
Set network to communicate with the other containers


###Docker-compose
For client
Depends on Backend
Set network

For Backend
Depends on Database
Set network

Network set to use driver:bridge


####volumes
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



## License
Copyright (c) 2020 Purity Ruddy

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
Copyright (c) 2020 **Purity Ruddy**
