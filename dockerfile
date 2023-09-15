FROM ruby:3.0

COPY . .

RUN bundle install

CMD ["cucumber", "--format", "json", "--out", "report.json"]