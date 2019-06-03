FROM ubuntu:18.10

ENV TERM=xterm

RUN apt-get update \
    && apt-get install libmysqlclient-dev \
        curl build-essential -y \
    && curl -sf -L \
        https://static.rust-lang.org/rustup.sh | sh -s -- -y

RUN mv ~/.cargo/bin/* /usr/local/bin