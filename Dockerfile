FROM ruby:alpine
RUN apk add build-base && rm -rf /var/cache/apk/*
RUN gem install rails-erb-lint
WORKDIR /lint
ENTRYPOINT ["rails-erb-lint"]
