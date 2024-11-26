FROM golang:1.20-alpine
WORKDIR /app
COPY go.mod go.sum ./
COPY . .

ENV GOPROXY=https://goproxy.cn,direct
ENV GOSUMDB=off
RUN go build -o zerobot-plugin .  

CMD ["./zerobot-plugin"]
