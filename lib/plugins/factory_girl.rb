# frozen_string_literal: true

begin
  require "factory_bot"
  # Sequel does not have save! method
  if defined?(Sequel)
    FactoryBot.define do
      to_create(&:save)
    end
  end
  FactoryBot.find_definitions
end
