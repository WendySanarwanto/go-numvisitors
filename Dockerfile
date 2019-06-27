FROM golang:1.12-alpine

# Install git 1st
RUN apk add --update git

WORKDIR /apps

RUN go get github.com/DronRathore/goexpress
RUN go get github.com/go-redis/redis

COPY ./main.go ./
RUN go build main.go

CMD ["./main"]
