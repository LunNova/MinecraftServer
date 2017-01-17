#!/bin/sh
apk --no-cache add ca-certificates openssl tini curl bash sudo && update-ca-certificates
adduser -s /bin/false -D -H minecraft
