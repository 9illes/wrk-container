# build
FROM alpine:latest AS build
RUN apk add --update linux-headers alpine-sdk perl

WORKDIR /tmp
RUN git clone -b 4.2.0 https://github.com/wg/wrk

WORKDIR /tmp/wrk
RUN make

# image
FROM alpine:latest
RUN apk add --no-cache libgcc
COPY --from=build /tmp/wrk/wrk /usr/local/bin/
ENTRYPOINT ["wrk"]
CMD ["--help"]