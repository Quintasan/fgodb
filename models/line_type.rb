# frozen_string_literal: true

class LineType < Sequel::Model
  one_to_many :lines
  def validate
    super
    validates_presence :name
    validates_unique :name, allow_nil: true
    validates_type(String, :name, allow_nil: true)
  end
end
