# frozen_string_literal: true

FactoryGirl.define do
  factory :line_type do
    sequence(:name) { |n| "LineType ##{n}" }
  end
end
