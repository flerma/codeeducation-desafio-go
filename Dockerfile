FROM golang AS builder

WORKDIR $GOPATH/src/go/app/
COPY . .

RUN go get .
    RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o /go/bin/main main.go

FROM scratch
COPY --from=builder /go/bin/main /go/bin/main

ENTRYPOINT ["/go/bin/main"]