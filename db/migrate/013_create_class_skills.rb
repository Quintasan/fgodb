Sequel.migration do
  change do
    create_table :class_skills do
      primary_key :id
      String :name, null: false
      foreign_key :rank_id, :ranks, on_delete: :restrict, null: false
      index %i(name rank_id), unique: true
      String :effect, null: false

      Time :created_at
      Time :updated_at
    end
  end

end
