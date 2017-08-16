FROM alpine:latest

RUN apk --no-cahe add monit=5.22.0-r0

VOLUME /etc/monit.d/

EXPOSE 2812

CMD ["monit", "-I", "-B"]