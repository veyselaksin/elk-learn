FROM golang:1.19

WORKDIR /app
COPY go.sum go.mod ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 go build -o /bin/app ./cmd/api

EXPOSE 8080

ENTRYPOINT ["/bin/app"]

