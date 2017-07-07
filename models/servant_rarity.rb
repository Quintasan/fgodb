# frozen_string_literal: true

class ServantRarity < Sequel::Model
  def validate
    super
    validates_includes [0, 1, 2, 3, 4, 5], :rarity, allow_nil: true
    validates_includes [65, 60, 65, 70, 80, 90], :max_level, allow_nil: true
  end
end
