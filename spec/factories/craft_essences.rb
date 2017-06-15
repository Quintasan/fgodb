# frozen_string_literal: true

FactoryGirl.define do
  factory :craft_essence do
    game_id { 1 }
    name "Test Craft Essence"
    min_hp_bonus 100
    max_hp_bonus 1000
    min_atk_bonus 100
    max_atk_bonus 1000
    effect "Test effect"
    limit_break "Limit broken effect"
    comment "Test comment"
    association :illustrator
    association :craft_essence_rarity
  end
end
