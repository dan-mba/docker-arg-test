FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install  --omit=dev --ignore-scripts
COPY . .

#ARG MONGODB_URL="mongodb://localhost:27017/linkfree"
RUN --mount=type=secret,id=aws,target=./.env npm run go

CMD ["npm", "run go"]