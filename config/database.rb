# frozen_string_literal: true

Sequel.extension :blank
Sequel.default_timezone = :utc
Sequel::Model.plugin :auto_validations, not_null: :presence
Sequel::Model.plugin :prepared_statements
Sequel::Model.plugin :prepared_statements_safe
Sequel::Model.plugin :validation_helpers
Sequel::Model.plugin :boolean_readers
Sequel::Model.plugin :timestamps, update_on_create: true
Sequel::Model.plugin :update_or_create
Sequel::Model.raise_on_save_failure = false # Do not throw exceptions on failure
Sequel::Model.db = case Padrino.env
                   when :development then Sequel.connect("postgres://fgodb:fgodb@localhost/fgodb_development", loggers: [logger])
                   when :production  then Sequel.connect("postgres://fgodb:fgodb@localhost/fgodb_production",  loggers: [logger])
                   when :test        then Sequel.connect("postgres://fgodb:fgodb@localhost/fgodb_test",        loggers: [logger])
                   end
