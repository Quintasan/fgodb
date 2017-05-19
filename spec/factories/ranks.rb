# frozen_string_literal: true

FactoryGirl.define do
  factory :rank do
    sequence(:value) { |n| "Rank #{n}" }
  end
end
