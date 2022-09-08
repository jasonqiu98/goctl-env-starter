FROM golang:1.19

RUN [ "go", "install", "github.com/zeromicro/go-zero/tools/goctl@latest" ]

RUN [ "goctl", "env", "check", "-i", "-f", "--verbose" ]

# the port you want to expose to the outside
# we use the ports 8081, 8082, ... for development
# and the ports 8091, 8092, ... for production/deployment
EXPOSE 8081