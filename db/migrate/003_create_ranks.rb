# frozen_string_literal: true

Sequel.migration do
  change do
    create_table :ranks do
      primary_key :id
      String :value, null: false, unique: true

      Time :created_at
      Time :updated_at
    end
  end
end
