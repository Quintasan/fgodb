Sequel.migration do
  change do
    create_table :lines do
      primary_key :id
      String :text
      foreign_key :line_type_id, :line_types, on_delete: :restrict

      Time :created_at
      Time :updated_at
    end
  end
end
