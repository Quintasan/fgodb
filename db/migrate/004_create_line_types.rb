Sequel.migration do
  change do
    create_table :line_types do
      primary_key :id
      String :name

      Time :created_at
      Time :updated_at
    end
  end
end
