# frozen_string_literal: true

class CraftEssence < Sequel::Model
  def validate
    super
    %i(game_id min_hp_bonus max_hp_bonus min_atk_bonus max_atk_bonus).each do |attribute|
      validates_presence(attribute)
      validates_type(Integer, attribute, allow_nil: true)
    end
    %i(name effect limit_break comment).each do |attribute|
      validates_presence(attribute)
      validates_type(String, attribute, allow_nil: true)
    end
  end
  many_to_one :illustrator
  many_to_one :craft_essence_rarity
end
