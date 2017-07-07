# frozen_string_literal: true

Sequel.migration do
  change do
    create_table :servant_classes do
      primary_key :id
      String :name, null: false, default: "", unique: true

      Time :created_at
      Time :updated_at
    end
  end
end
