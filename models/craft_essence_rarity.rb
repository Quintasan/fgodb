# frozen_string_literal: true

class CraftEssenceRarity < Sequel::Model
  def validate
    super
    validates_includes [1, 2, 3, 4, 5], :rarity, allow_nil: true
    validates_includes [50, 55, 60, 80, 100], :max_level, allow_nil: true
  end
  one_to_many :craft_essences
end
