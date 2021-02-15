FROM node:14

#ADD ORACLE INSTANT CLIENT
RUN mkdir -p opt/oracle
ADD instantclient*.zip ./

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install
COPY . . 

EXPOSE 8080

CMD ["node", "server.js"]