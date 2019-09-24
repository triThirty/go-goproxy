FROM golang:1.12.7

WORKDIR /home
ENV GOPROXY=https://goproxy.io
ENV GO111MODULE=on
COPY goproxy ./goproxy
RUN cd ./goproxy \
 && make \
