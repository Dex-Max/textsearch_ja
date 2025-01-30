# textsearch_ja
PostgreSQL extension to support full text search for Japanese. Uses [MeCab](https://github.com/taku910/mecab) for tokenizing and the mecab-ipadic dictionary.

Fork of [textsearch_ja 9.0.0](https://www.postgresql.org/ftp/projects/pgFoundry/textsearch-ja/textsearch_ja/9.0.0/) from the pgFoundry archive.

For original documentation, check the Japanese [README](./README.textsearch_ja)

## Usage (Docker)

Run the container with this command

```
docker run -d \
    --name <container name> \
    -p <port>:5432 \
    -e POSTGRES_USERNAME=<username> \
    -e POSTGRES_PASSWORD=<password> \
    dexmax1/textsearch_ja
```

The only required option is the POSTGRES_PASSWORD environment variable

If POSTGRES_USERNAME is not supplied, then it will default to user 'postgres'

For more information on running a PostgreSQL docker container, see the [postgres docs](https://github.com/docker-library/docs/blob/master/postgres/README.md)
