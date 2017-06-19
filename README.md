[![Docker Repository on Quay](https://quay.io/repository/popov1024/monit-alpine-docker/status "Docker Repository on Quay")](https://quay.io/repository/popov1024/monit-alpine-docker) [![](https://images.microbadger.com/badges/image/popov1024/monit-alpine.svg)](https://microbadger.com/images/popov1024/monit-alpine "Get your own image badge on microbadger.com")

# Monit on alpine

![Monit](https://mmonit.com/monit/img/logo.png "Monit logo")

[Monit][Monit] is very simple system for monitoring.

## How to use
### Simple run
* For test you can run as:
```
$ docker run --rm --name monit -p 2812:2812 popov1024/monit-alpine
```

 After run you can type (localhost:2812) in a browser. For authentication default use user `admin` and password `monit`.

* For run as demon:
```
$ docker run -d --name monit -p 2812:2812 popov1024/monit-alpine
```

* Mount a directory with configs:
```
$ docker run -d --name monit -p 2812:2812 -v "/path/to/configs:/etc/monit.d" popov1024/monit-alpine
```

* You can change [the config](https://github.com/popov1024/monit-alpine-docker/blob/master/monitrc) for `Monit` `/etc/monitrc' and mount:
```
$ docker run -d --name monit -p 2812:2812 -v "/path/to/configs:/etc/monit.d" -v "/path/to/monitrc:/etc/monitrc" popov1024/monit-alpine
```

### Docker compose
Example how to run using `docker-compose.yml`:
```
version: '2'
services:
  monit:
    image: 'popov1024/monit-alpine'
    volumes:
      - './monit.d/:/etc/monit.d/'
      - './monitrc:/etc/monitrc'
    ports:
      - '2812:2812'
```

[Monit]: https://mmonit.com/monit/ "official site"
