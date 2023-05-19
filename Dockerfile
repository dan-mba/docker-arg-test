FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./
COPY . .

ARG MONGODB_URL="mongodb://localhost:27017/linkfree"
RUN npm start

CMD ["npm", "start"]