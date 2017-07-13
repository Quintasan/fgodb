# frozen_string_literal: true

FactoryGirl.define do
  factory :trait do
    sequence(:name) { |n| "Trait ##{n}" }
  end
end
