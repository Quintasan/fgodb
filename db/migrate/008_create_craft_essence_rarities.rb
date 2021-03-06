# frozen_string_literal: true

Sequel.migration do
  change do
    create_table :craft_essence_rarities do
      primary_key :id
      Integer :rarity, null: false
      Integer :max_level, null: false
    end
  end
end
