Sequel.extension :blank
Sequel.default_timezone = :utc
Sequel::Model.plugin :auto_validations
Sequel::Model.plugin :prepared_statements
Sequel::Model.plugin :prepared_statements_safe
Sequel::Model.plugin :validation_helpers
Sequel::Model.plugin :boolean_readers
Sequel::Model.plugin :timestamps, update_on_create: true
Sequel::Model.plugin :update_or_create
Sequel::Model.raise_on_save_failure = false # Do not throw exceptions on failure
Sequel::Model.db = case Padrino.env
  when :development then Sequel.connect("sqlite://db/fgodb_development.db", :loggers => [logger])
  when :production  then Sequel.connect("sqlite://db/fgodb_production.db",  :loggers => [logger])
  when :test        then Sequel.connect("sqlite://db/fgodb_test.db",        :loggers => [logger])
end
