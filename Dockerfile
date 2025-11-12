# First app build stage
FROM golang:alpine AS builder

RUN apk add --no-cache git
RUN git clone https://github.com/jech/galene.git /galene
WORKDIR /galene

RUN go mod download

# As I can see from the Docker Registry report
# default *old* versions from the original repo
# contains vulnerable packages. This is a major issue
# due to p2p *private* video calls
RUN go get -u ./...
RUN go mod tidy

RUN CGO_ENABLED=0 \
    go build -a -installsuffix cgo -ldflags='-s -w' -ldflags="-extldflags '-static'" -o galene .

# Second stage with static Debian 13 distroless image
FROM gcr.io/distroless/static-debian13

COPY --from=builder /galene/ /

ENTRYPOINT ["/galene"]
