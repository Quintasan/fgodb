# frozen_string_literal: true

Sequel.migration do
  change do
    create_table :noble_phantasm_types do
      primary_key :id
      String :name

      Time :created_at
      Time :updated_at
    end
  end
end
