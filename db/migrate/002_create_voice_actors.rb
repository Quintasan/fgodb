Sequel.migration do
  change do
    create_table :voice_actors do
      primary_key :id
      String :first_name
      String :nickname
      String :last_name

      Time :created_at
      Time :updated_at
    end
  end
end
