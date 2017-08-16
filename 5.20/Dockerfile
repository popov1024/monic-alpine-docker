FROM alpine:3.5

RUN apk --no-cache add monit=5.20.0-r0

VOLUME /etc/monit.d/

EXPOSE 2812

CMD ["monit", "-I", "-B"]