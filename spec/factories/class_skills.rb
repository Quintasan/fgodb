FactoryGirl.define do
  factory :class_skill do
    sequence(:name) { |n| "Class Skill ##{n}" }
    association :rank
    effect "Test Effect"
  end
end
