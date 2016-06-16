class NoblePhantasmType < Sequel::Model
  def validate
    super
    validates_presence :name
    validates_type(String, :name, allow_nil: true)
  end

end
