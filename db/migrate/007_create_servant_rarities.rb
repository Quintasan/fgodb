Sequel.migration do
  change do
    create_table :servant_rarities do
      primary_key :id
      Integer :rarity
      Integer :max_level
    end
  end
end
