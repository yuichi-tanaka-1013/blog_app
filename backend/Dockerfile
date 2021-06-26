FROM ruby:2.6.5-alpine3.11

WORKDIR /backend

RUN apk update && \
  apk upgrade --no-cache && \
  apk add --no-cache \
  build-base \
  libxml2-dev \
  libxslt-dev \
  postgresql \
  postgresql-dev \
  imagemagick \
  ffmpeg
RUN apk add --update --no-cache less

RUN gem install bundler:2.2.14

COPY Gemfile Gemfile.lock ./

RUN bundle install && \
  mkdir -p tmp/sockets

COPY . ./

# Expose volumes to Webserver
VOLUME /backend/public
VOLUME /backend/tmp

EXPOSE 3000

CMD ["bundle", "exec", "puma"]
# CMD ["rails", "server", "-b", "0.0.0.0"]
