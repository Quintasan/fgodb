#/usr/bin/env bash
docker run --name fgodb_postgres \
        -v $(pwd)/start_database:/docker-entrypoint-initdb.d \
        -p 5432:5432 \
        -e POSTGRES_USER=fgodb \
        -e POSTGRES_PASSWORD=fgodb \
        -d postgres:9.6-alpine
