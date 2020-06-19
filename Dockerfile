FROM node:current-alpine AS Builder

RUN apk add git curl

RUN curl -sfL https://install.goreleaser.com/github.com/tj/node-prune.sh | sh -s -- -b /usr/local/bin

COPY . /app

WORKDIR /app

RUN npm install --only=production

RUN /usr/local/bin/node-prune

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
