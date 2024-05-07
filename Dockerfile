FROM golang:alpine

WORKDIR /app

RUN apk update && apk add git

RUN git clone https://github.com/helloabhii/GoWebApp .

RUN go build -o main .

EXPOSE 8080

CMD ["main"]

