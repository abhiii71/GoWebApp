FROM golang:alpine AS builder

WORKDIR /app 

RUN apk add --no-cache git

RUN git clone https://github.com/helloabhii/GoWebApp .

COPY go.mod .

RUN go build -o main .

### Multi stage

FROM alpine:latest

WORKDIR /app

COPY --from=builder /app/main .

EXPOSE 8080

CMD ["./main"]
