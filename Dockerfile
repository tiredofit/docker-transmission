FROM tiredofit/novnc:alpine
LABEL maintainer="Dave Conroy (github.com/tiredofit)"

ENV IMAGE_NAME=tiredofit/transmission \
    IMAGE_REPO_URL=https://github.com/tiredofit/docker-transmission

RUN set -x && \
    apk update && \
    apk upgrade && \
    apk add -t .transmission-run-deps \
               gtk+3.0 \
               transmission \
               && \
    rm -rf /var/cache/apk/*

ADD install/ /
