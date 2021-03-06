ARG CONTAINER_RUBY_VERSION=2.2.2
FROM ruby:$CONTAINER_RUBY_VERSION

RUN export DEBIAN_CODENAME=$(cat /etc/os-release | grep "VERSION=" | cut -d "(" -f2 | cut -d ")" -f1) && \
    echo "deb http://apt.postgresql.org/pub/repos/apt/ $DEBIAN_CODENAME-pgdg main 10" >> /etc/apt/sources.list.d/pgdg.list && \
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
    apt-get update && \
    apt-get install -qq -y --fix-missing --force-yes --no-install-recommends \
      less \
      postgresql-client && \
    rm -rf /var/lib/apt/lists/*

RUN curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 > /usr/local/bin/cc-reporter && \
    chmod +x /usr/local/bin/cc-reporter

RUN gem install bundler -v 1.15.2

RUN mkdir /code

WORKDIR /code

ENV PATH "/code/bin:$PATH"

CMD /bin/sleep infinity
