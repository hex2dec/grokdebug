FROM ruby:2.1
LABEL maintainer="William Huang <ai.william@outlook.com>"

ADD ./ /app/

WORKDIR /app

RUN gem install foreman && bundle install

EXPOSE 5000

ENTRYPOINT ["foreman", "start"]