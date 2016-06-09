class Line < Sequel::Model
  many_to_one :line_type
  def validate
    super
    validates_presence :text
  end
end
