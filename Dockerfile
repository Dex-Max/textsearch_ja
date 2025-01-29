FROM postgres:17

RUN apt-get update && apt-get install -y \
    gcc \
    make \
    postgresql-server-dev-17 \
    mecab \
    mecab-ipadic-utf8 \
    libmecab-dev

RUN mkdir textsearch_ja
COPY . /textsearch_ja

WORKDIR /textsearch_ja
RUN make USE_PGXS=1 PG_CONFIG=/usr/lib/postgresql/17/bin/pg_config
RUN make USE_PGXS=1 PG_CONFIG=/usr/lib/postgresql/17/bin/pg_config install

RUN cp textsearch_ja.sql /docker-entrypoint-initdb.d/
