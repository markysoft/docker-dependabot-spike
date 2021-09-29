# docker-dependabot-spike
repo to investigate the effectiveness of dependabots docker integration
```
docker build --no-cache --tag mark-node:latest --target=production .
docker run --rm -it --entrypoint sh mark-node:latest
```
