FROM alpine:latest

RUN apk --no-cache add curl

WORKDIR /app

COPY data.sh .

CMD [ "sh", "data.sh" ]
