FROM alpine:3.8
# ENV HTTP_PROXY=http://proxy.toshiba.co.jp:8080
# ENV HTTPS_PROXY=http://proxy.toshiba.co.jp:8080
RUN apk add curl bash ffmpeg && \
    rm -rf /var/cache/apk/*

COPY ffserver.conf /etc/ffserver.conf

ENTRYPOINT [ "ffserver" ]