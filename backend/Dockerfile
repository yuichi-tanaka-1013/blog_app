FROM ruby:2.6.5-alpine3.11

WORKDIR /backend

RUN apk update && \
  apk upgrade --no-cache && \
  apk add --update --no-cache \
  build-base \
  libxml2-dev \
  libxslt-dev \
  postgresql \
  postgresql-dev \
  imagemagick \
  ffmpeg \
  less

RUN gem install bundler:2.2.14

COPY Gemfile Gemfile.lock ./

RUN bundle install && \
  mkdir -p tmp/sockets

COPY . ./

EXPOSE 3000

CMD ["bundle", "exec", "puma"]
