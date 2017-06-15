# frozen_string_literal: true

Sequel.migration do
  change do
    create_table :illustrators do
      primary_key :id
      String :first_name, null: false, default: ""
      String :nickname, null: false, default: ""
      String :last_name, null: false, default: ""

      Time :created_at
      Time :updated_at
    end
  end
end
