FROM ruby:3.0

WORKDIR /qalizando

COPY . .

RUN bundle install

CMD ["cucumber", "--format", "json", "--out", "report.json"]