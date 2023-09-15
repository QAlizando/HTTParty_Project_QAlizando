FROM ruby:3.0

COPY . .

COPY testRunner.sh /

RUN bundle install && chmod +x /testRunner.sh

CMD ["cucumber", "--format", "json", "--out", "/reports/report.json"]