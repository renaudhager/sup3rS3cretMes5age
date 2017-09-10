FROM golang:1.8-alpine

ENV VAULT_ADDR="http://localhost:8200" \
    VAULT_TOKEN=""

RUN apk update && \
    apk add git

RUN cd /go/src && \
    git clone https://github.com/algolia/sup3rS3cretMes5age.git && \
    cd sup3rS3cretMes5age/ && \
    go get

COPY start.sh /
RUN chmod u+x /start.sh

EXPOSE 1234

ENTRYPOINT ["/start.sh"]
