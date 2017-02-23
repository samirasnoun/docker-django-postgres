#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER sys.get_env('POSTGRES_USER');
    CREATE DATABASE sys.get_env('POSTGRES_DB');
    GRANT ALL PRIVILEGES ON DATABASE sys.get_env('POSTGRES_DB') TO sys.get_env('POSTGRES_USER');
EOSQL


