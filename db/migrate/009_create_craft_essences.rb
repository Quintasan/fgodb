# frozen_string_literal: true

Sequel.migration do
  change do
    create_table :craft_essences do
      primary_key :id
      Integer :game_id, null: false
      String :name, null: false, default: ""
      Integer :min_hp_bonus, null: false
      Integer :max_hp_bonus, null: false
      Integer :min_atk_bonus, null: false
      Integer :max_atk_bonus, null: false
      foreign_key :illustrator_id, :illustrators
      foreign_key :craft_essence_rarity_id, :craft_essence_rarities
      String :effect, null: false, default: ""
      String :limit_break, null: false, default: ""
      String :comment, null: false, default: ""

      Time :created_at
      Time :updated_at
    end
  end
end
