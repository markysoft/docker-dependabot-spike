# Set default values for build arguments
#ARG BASE_VERSION=14.17.6-alpine3.14

FROM node:17.5.0-alpine3.14 AS production

# ARG BASE_VERSION

ENV NODE_ENV production

# Set global npm dependencies to be stored under the node user directory
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

# We need a basic init process to handle signals and reap zombie processes, tini handles that
# Install Internal CA certificate
RUN apk update && apk add --no-cache tini  && rm -rf /var/cache/apk/*

ENTRYPOINT ["/sbin/tini", "--"]
