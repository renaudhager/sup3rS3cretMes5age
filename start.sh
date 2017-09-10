#!/bin/sh

if [ -z "$VAULT_TOKEN" ]
then
  echo "Vault token is missing."
  echo "You need to add the following env var : VAULT_TOKEN=XXX"
  exit 1
fi

cd /go/src/sup3rS3cretMes5age
go run *.go
