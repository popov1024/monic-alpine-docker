FROM alpine:latest

RUN apk --no-cache add monit

VOLUME /etc/monit.d/

EXPOSE 2812

CMD ["monit", "-I", "-B"]