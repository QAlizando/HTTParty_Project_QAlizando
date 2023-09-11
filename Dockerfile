FROM ruby:2.6.3

WORKDIR /qalizando

COPY Gemfile ./

RUN bundle install

COPY . .

CMD ["cucumber"]

