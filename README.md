# Docker image for sup3rS3cretMes5age
Running sup3rS3cretMes5age (https://github.com/algolia/sup3rS3cretMes5age) inside a Docker container.

## How to use it

```
git clone https://github.com/renaudhager/sup3rS3cretMes5age.git
make
docker run -d -e VAULT_TOKEN=XXX renaudhager/sup3rs3cretmes5age:latest
```

## Available ENV variables
- `VAULT_ADDR` : HTTP address of VAULT endpoint. Default value is http://localhost:8200
- `VAULT_TOKEN` : Token use to access VAULT.
