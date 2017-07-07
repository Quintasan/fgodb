# frozen_string_literal: true

FactoryGirl.define do
  factory :servant_class do
    sequence(:name) { |n| "Servant Class ##{n}" }
  end
end
