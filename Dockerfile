FROM ruby:3.0.2-alpine

RUN apk update && apk add --no-cache build-base \
    postgresql-client \
    git \
    curl \
    postgresql-dev \
    tzdata

WORKDIR /app

COPY . .

RUN gem install bundler && bundle install

COPY entrypoint.sh /usr/bin/

RUN apk add --no-cache bash && \
    echo "chmod +x /usr/bin/entrypoint.sh" | bash && \
    chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]