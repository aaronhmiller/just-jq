FROM alpine:latest
  
RUN apk add --no-cache jq && \
    rm -rf /root/.cache && rm -rf /var/cache/apk/*

ENTRYPOINT [ "jq" ]
