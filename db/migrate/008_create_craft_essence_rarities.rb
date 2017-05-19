# frozen_string_literal: true

Sequel.migration do
  up do
    create_table :craft_essence_rarities do
      primary_key :id
      Integer :rarity
      Integer :max_level
    end
  end

  down do
    drop_table :craft_essence_rarities
  end
end
