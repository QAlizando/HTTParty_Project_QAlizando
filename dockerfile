FROM ruby:3.0

WORKDIR /qalizando

COPY . .

COPY testRunner.sh /

COPY reports /

RUN bundle install && chmod +x /testRunner.sh

CMD /testRunner.sh