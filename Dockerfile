FROM ruby:alpine3.13

RUN apk update && \
    apk add curl

RUN gem install builder rufo && \
    bundle config set --local path 'vendor/bundle'

EXPOSE 4567
