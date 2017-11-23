# frozen_string_literal: true

FactoryBot.define do
  factory :line_type do
    sequence(:name) { |n| "LineType ##{n}" }
  end
end
