FROM alpine:3.11

WORKDIR /

COPY LICENSE README.md /

RUN apk --no-cache add \
    lftp=4.8.4-r2
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
