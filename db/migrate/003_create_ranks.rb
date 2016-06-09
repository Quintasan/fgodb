Sequel.migration do
  change do
    create_table :ranks do
      primary_key :id
      String :value

      Time :created_at
      Time :updated_at
    end
  end
end
