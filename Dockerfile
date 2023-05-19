FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./
COPY . .

ARG MONGODB_URL
RUN npm start

CMD ["npm", "start"]