FROM node:current-alpine3.16

WORKDIR /app
COPY . /app

RUN apk update && apk add nodejs && apk add git && apk add --update npm && npm install firebase-tools -g

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]

