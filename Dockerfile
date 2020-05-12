FROM node:current-alpine AS Builder

RUN apk add git

RUN git clone https://github.com/tannerkrewson/spyfall.git /app

WORKDIR /app

RUN npm install
RUN npm run build

RUN rm -rf .git
RUN rm -rf .github
RUN rm -rf .prettierignore
RUN rm -rf .prettierrc
RUN rm .gitignore
RUN rm LICENSE
RUN rm README.md

####################################

FROM node:current-alpine

COPY --from=Builder /app /app

WORKDIR /app

EXPOSE 3000

CMD [ "node", "server.js" ]
