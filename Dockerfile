FROM node:dubnium-alpine

WORKDIR /app
COPY . /app

RUN npm config set unsafe-perm true \
    && npm install -g appcenter-cli \
    && apk update \
    && apk add git 

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]

