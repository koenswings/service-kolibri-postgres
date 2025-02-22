# Copied from ./docker/Dockerfile.postgres.dev of version 2024.12.03 of Kolibri Studio
# Installs pgvector to postgres base image.
ARG PG_MAJOR=12
FROM postgres:$PG_MAJOR

LABEL org.opencontainers.image.source=https://github.com/learningequality/studio
LABEL org.opencontainers.image.description="Postgres with PG Vector extension"
LABEL org.opencontainers.image.licenses=MIT

RUN apt-get update && apt-get install -y postgresql-$PG_MAJOR-pgvector
