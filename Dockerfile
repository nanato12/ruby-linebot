FROM ruby:alpine3.13

RUN apk update
RUN gem install builder
