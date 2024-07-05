FROM node

COPY ./node-hello /node-hello

WORKDIR /node-hello
ENTRYPOINT npm start