FROM ruby:3.0

WORKDIR /qalizando

COPY Gemfile ./

RUN bundle install

COPY . .

CMD ["cucumber"]

