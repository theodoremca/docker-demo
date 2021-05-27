FROM node:12

WORKDIR /app

COPY package*.json ./

RUN npm install 

RUN npm i nodemon

COPY . .

ENV PORT=3000

EXPOSE 3000

CMD [ "node","app.js" ]