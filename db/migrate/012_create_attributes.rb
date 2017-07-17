# frozen_string_literal: true

Sequel.migration do
  change do
    create_table :attributes do
      primary_key :id
      String :name, null: false, unique: true

      Time :created_at
      Time :updated_at
    end
  end
end
