FROM node:15-alpine3.10

RUN apk add --no-cache git

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install
# TypeScript
RUN npm run tsc

COPY --chown=node:node . .

EXPOSE 3000

CMD [ "node", "app.js" ]
