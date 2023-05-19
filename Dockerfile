FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./
COPY . .

ARG MONGODB_URL
RUN LINKFREE_MONGO_CONNECTION_STRING=${MONGODB_URL} && npm start

CMD ["npm", "start"]