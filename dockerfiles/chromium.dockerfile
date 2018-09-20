FROM node:9-alpine

# Installs latest Chromium (68) package.
RUN apk update && \
  apk upgrade && \
  echo @v3.8 https://ftp.acc.umu.se/mirror/alpinelinux.org/v3.8/community >> /etc/apk/repositories && \
  echo @v3.8 https://ftp.acc.umu.se/mirror/alpinelinux.org/v3.8/main >> /etc/apk/repositories && \
  apk add --no-cache \
    freetype@v3.8 \
    harfbuzz@v3.8 \
    chromium@v3.8 \
    nss@v3.8