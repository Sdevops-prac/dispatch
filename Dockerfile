FROM            golang:1.27
RUN             mkdir /app
WORKDIR         /app
COPY            . /app
RUN             go mod init dispatch ; go get ; go build;
ENTRYPOINT      ["/app/dispatch"]
