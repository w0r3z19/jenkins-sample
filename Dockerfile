FROM hub.atomgit.com/amd64/golang:1.19.13

ADD . /go/src/app

WORKDIR /go/src/app

RUN go mod init

RUN  go build -v -o /go/src/app/jenkins-app

CMD ["./jenkins-app"]
