FROM ruby:alpine
RUN apk --update add build-base && \
    gem install rails-erb-lint && \
    apk del build-base && \
    rm -rf /var/cache/apk/*
WORKDIR /lint
ENTRYPOINT ["rails-erb-lint"]
