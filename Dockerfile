FROM node
LABEL org.opencontainers.image.source https://github.com/devopzvi/ma

COPY ./node-hello /node-hello

WORKDIR /node-hello

ENTRYPOINT npm start
