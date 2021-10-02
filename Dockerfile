FROM alpine:3.12 as os

# install Rust, Cargo, Bash, Redis
RUN apk update && \
    apk upgrade && \
    apk add rust cargo bash

WORKDIR /server
COPY ./src .
RUN cargo install --path .

# Expose ports.
EXPOSE 1338