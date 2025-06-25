FROM golang:1.22.0

WORKDIR /usr/src/app

COPY go.mod go.sum /usr/src/app

RUN go mod download

COPY *.go tracker.db /usr/src/app

RUN go build -o tracker

CMD ["/usr/src/app/tracker"]