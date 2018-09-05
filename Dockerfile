# Multi-stage build step 0
FROM golang:1.11

RUN mkdir -p /go/src/app
WORKDIR /go/src/app
COPY . /go/src/app

ENV CGO_ENABLED=0

RUN GOOS=linux go build -ldflags="-s -w" -o hello .

# Multi-stage build step 1
FROM scratch

COPY --from=0 /go/src/app /
COPY --from=0 /go/src/app/templates /templates

CMD ["/hello"]
