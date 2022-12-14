FROM ruby:3.1.2-buster
WORKDIR /app
RUN gem install bundler -v 2.3.9 --no-document
COPY \
  Gemfile \
  /app/
COPY \
  sample.rb \
  /app/sample.rb
RUN bundle install

CMD ["tail", "-f", "/dev/null"]
