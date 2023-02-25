FROM node:latest

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app
COPY package.json ./

USER node

run npm install
#run chown=node:node ./package*.json
COPY --chown=node:node . ./
RUN ["chmod", "755", "./package-lock.json"]
EXPOSE 8000
CMD [ "node", "server.js" ]
