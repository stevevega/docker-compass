#!/bin/sh
apk add --update \
    ruby \
    ruby-dev \
    libffi-dev \
    build-base

gem install \
    listen \
    sass \
    compass

apk del \
    build-base \
    libffi-dev \
    ruby-dev

rm -rf /var/cache/apk/*
