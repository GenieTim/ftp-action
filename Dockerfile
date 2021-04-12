FROM alpine:3.11

WORKDIR /

COPY LICENSE README.md /

RUN apk --no-cache add lftp
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
