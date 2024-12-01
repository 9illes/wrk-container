# WRK container

Containerize the HTTP benchmarking tool [wrk](https://github.com/wg/wrk) in an [alpine](https://hub.docker.com/_/alpine/).

Use a multi-stage build.

## Usage

```sh
docker build . -t 9illes/wrk:4.2.0
docker run --rm 9illes/wrk:4.2.0
```
