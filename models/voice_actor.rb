# frozen_string_literal: true

class VoiceActor < Sequel::Model
  skip_auto_validations(:not_null)
  def validate
    super
    validates_at_least_one %i[first_name nickname last_name]
    validates_type(String, :first_name, allow_nil: true)
    validates_type(String, :nickname, allow_nil: true)
    validates_type(String, :last_name, allow_nil: true)
  end
end
