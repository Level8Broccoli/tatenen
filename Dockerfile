FROM alpine:3.18.0

ENV PYTHONUNBUFFERED=1

RUN apk update \
    && apk add --no-cache \
    openssh \
    git \
    python3 \
    ansible \
    zsh

RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools
