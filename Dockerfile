FROM alpine:latest

RUN apk update && apk add nodejs npm bash

RUN npm install -g quicktype

WORKDIR /app

CMD ["bash"]