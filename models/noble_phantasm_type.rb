# frozen_string_literal: true

class NoblePhantasmType < Sequel::Model
  def validate
    super
    validates_type(String, :name, allow_nil: true)
  end
end
