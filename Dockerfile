FROM alpine:latest

RUN apk update && \
    apk add monit

VOLUME /etc/monit.d/

EXPOSE 2812

CMD [monit", "-I"]