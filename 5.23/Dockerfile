FROM alpine:latest

RUN apk update && \
    apk add monit=5.23.0-r0

VOLUME /etc/monit.d/

EXPOSE 2812

CMD ["monit", "-I", "-B"]