begin
  require "factory_girl"
  # Sequel does not have save! method
  if defined?(Sequel)
    FactoryGirl.define do
      to_create { |instance| instance.save }
    end
  end
  FactoryGirl.find_definitions
rescue LoadError
end
