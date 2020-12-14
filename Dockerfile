FROM golang:alpine AS builder

RUN apk update && \
    apk add --no-cache git

WORKDIR $GOPATH/src/go/app/
COPY . .

RUN go get -d -v && \
    go install -v && \
    go build -o /go/bin/main main.go

FROM scratch
COPY --from=builder /go/bin/main /go/bin/main

ENTRYPOINT ["/go/bin/main"]