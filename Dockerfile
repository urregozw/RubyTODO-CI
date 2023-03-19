# syntax=docker/dockerfile:1
FROM ruby:3.0.2
RUN apt-get update && apt-get install -y sqlite3
WORKDIR /app
COPY . .
RUN gem install bundler:2.4.8
RUN bundle install
RUN rails db:migrate

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]