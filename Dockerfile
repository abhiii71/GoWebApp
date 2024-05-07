FROM golang:latest

WORKDIR /app

RUN git clone https://github.com/helloabhii/GoWebApp .

RUN go build -o main .

EXPOSE 8080

CMD ["main"]

