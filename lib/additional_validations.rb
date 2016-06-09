module Sequel
  class Model
    def validates_at_least_one(atts)
      atts = Array(atts)
      errors.add(:base, "At least one of the following attributes must be present: #{atts}") unless values.any? { |k, v| v.present? }
    end
  end
end
