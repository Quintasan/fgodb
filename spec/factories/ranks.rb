# frozen_string_literal: true

FactoryBot.define do
  factory :rank do
    sequence(:value) { |n| "Rank #{n}" }
  end
end
