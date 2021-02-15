FROM ruby:alpine3.13

RUN apk update
RUN gem install builder && \
    bundle config set --local path 'vendor/bundle'
