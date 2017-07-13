# Fate/Grand Order DataBase

## Dependencies

1. Ruby >= 2.4.1
2. Sequel >= 4.35
3. Padrino >= 0.14.0

The database used in production is PostgreSQL 9.6.

## Installation

1. Set up PostgreSQL according to `config/database.rb` or use `start_database.sh` if you have Docker.
2. `git clone https://github.com/Quintasan/fgodb.git`
3. `cd fgodb && bundle install`
4. `padrino rake sq:migrate`
5. `padrino start`
