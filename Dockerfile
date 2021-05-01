FROM php:8-alpine

ENV BUILD_DEPS="autoconf g++ gcc make"

RUN apk add --no-cache --virtual .build-deps $BUILD_DEPS \
  && pecl install pcov && docker-php-ext-enable pcov \
  && apk del .build-deps
