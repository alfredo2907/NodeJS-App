# node-express-rest-api-example

A Basic Node.js/Express REST API implementation example.


# Usa the App in local

* Run `npm install` to installl dependencies
* Run `npm run start` to start the local server
* Load `http://localhost:8000` to test the endpoint. It will display a json result `{"message":"Ok"}`

# Deploy Node JS Application using Docker

* Run `docker pull node:latest` to pull node image with latest tag
* Run `docker images` to get all images in locally
* Create dockerfile to contain our app
`FROM node:latest

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app
COPY package.json ./

USER node

RUN npm install
COPY --chown=node:node . ./
RUN ["chmod", "755", "./package-lock.json"]
EXPOSE 8000
CMD [ "node", "server.js" ]
`
* Run `docker build -t repo_name:tag .`
After success create the image, make sure with list the images
* Run `docker run -d -p 8000:8000 alfredo123/node:latest` to expose our app on 8000 port
check 











