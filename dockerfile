FROM ruby:3.0

WORKDIR /qalizando

COPY . .

RUN bundle install && chmod +x /testRunner.sh

CMD ["cucumber", "--format", "json", "--out", "report.json"]