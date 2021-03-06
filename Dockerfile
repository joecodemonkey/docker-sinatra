FROM ruby:3.1.0-alpine

WORKDIR '/app'

#CMD ["apk", "add", "nio4r", "build-base", "gcc", "libstdc++", "libssl1.0"]
RUN apk update && apk upgrade && apk add build-base gcc libstdc++ libressl 

COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install --jobs=4

COPY . .
#CMD ["rackup"]
#CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0"]
