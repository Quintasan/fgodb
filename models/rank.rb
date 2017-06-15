# frozen_string_literal: true

class Rank < Sequel::Model
  def validate
    super
    validates_type String, :value, allow_nil: true
  end
end
