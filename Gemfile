source "https://rubygems.org"

gem "padrino", "0.13.2"
gem "rake"
gem "sass"
gem "haml"
gem "sqlite3"
gem "sequel"

group :test, :development do
  gem "pry-byebug"
  gem "factory_girl"
end

group :development do
  gem "thin"
end

group :test do
  gem "rspec"
  gem "rack-test", :require => "rack/test"
  gem "database_cleaner"
end
