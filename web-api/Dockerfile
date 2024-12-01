FROM golang:1.23.3-alpine

WORKDIR /app

COPY go.mod go.sum ./

COPY . .

RUN go build -o webapi .

CMD ["./webapi"]

EXPOSE 3000