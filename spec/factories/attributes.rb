# frozen_string_literal: true

FactoryGirl.define do
  factory :attribute do
    sequence(:name) { |n| "Attribute ##{n}" }
  end
end