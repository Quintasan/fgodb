# frozen_string_literal: true

FactoryBot.define do
  factory :trait do
    sequence(:name) { |n| "Trait ##{n}" }
  end
end
