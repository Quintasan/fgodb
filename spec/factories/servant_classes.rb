# frozen_string_literal: true

FactoryBot.define do
  factory :servant_class do
    sequence(:name) { |n| "Servant Class ##{n}" }
  end
end
