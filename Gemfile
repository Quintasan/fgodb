# frozen_string_literal: true

source "https://rubygems.org"

gem "hamlit"
gem "padrino", "~> 0.14.0"
gem "pg"
gem "rake"
gem "sass"
gem "sequel"
gem "sqlite3"

group :test, :development do
  gem "factory_bot"
  gem "pry-byebug"
end

group :development do
  gem "bundler-audit", require: false
  gem "rubocop", require: false
  gem "thin"
end

group :test do
  gem "database_cleaner"
  gem "rack-test", require: "rack/test"
  gem "rspec"
end
