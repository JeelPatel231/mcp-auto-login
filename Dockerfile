FROM alpine:edge

RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing mono
RUN mkdir /root/workdir && chmod 777 /root/workdir
WORKDIR /root/workdir
COPY . .
RUN chmod a+x script.sh
CMD ["./script.sh"]