# frozen_string_literal: true

begin
  require "factory_girl"
  # Sequel does not have save! method
  if defined?(Sequel)
    FactoryGirl.define do
      to_create(&:save)
    end
  end
  FactoryGirl.find_definitions
end
