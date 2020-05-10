FROM node

RUN git clone https://github.com/tannerkrewson/spyfall.git /app

WORKDIR /app

RUN npm install
RUN npm run build

EXPOSE 3000

CMD [ "node", "server.js" ]