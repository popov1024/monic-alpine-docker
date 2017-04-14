FROM alpine:latest

RUN apk update && \
    apk add monit

VOLUME /etc/monit.d/

EXPOSE 2812

ENTRYPOINT ["chmod", "0700", "/etc/monitrc"]

CMD ["monit", "-I", "-B"]