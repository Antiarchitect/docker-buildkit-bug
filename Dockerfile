FROM alpine:3.9

WORKDIR /app
ADD 1.txt 2.txt ./
RUN set -ex && cat ./2.txt