# frozen_string_literal: true

FactoryBot.define do
  factory :attribute do
    sequence(:name) { |n| "Attribute ##{n}" }
  end
end
