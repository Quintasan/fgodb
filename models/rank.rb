class Rank < Sequel::Model
  def validate
    super
    validates_presence :value
    validates_type String, :value, allow_nil: true
  end
end
