# frozen_string_literal: true

Sequel.migration do
  change do
    create_table :illustrators do
      primary_key :id
      String :first_name
      String :nickname
      String :last_name

      Time :created_at
      Time :updated_at
    end
  end
end
