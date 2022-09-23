FROM node:current-alpine3.16

WORKDIR /app
COPY . /app

RUN 
    apk update
    && apk add git 
    && apk add npm 
    && npm install npm@8.17.0 -g
    && npm install firebase-tools -g

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]

