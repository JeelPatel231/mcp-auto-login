FROM alpine:edge

RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing mono
RUN mkdir /root/workdir
WORKDIR /root/workdir
COPY . .
RUN ls
CMD ["./script.sh"]