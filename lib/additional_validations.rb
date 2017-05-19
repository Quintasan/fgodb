# frozen_string_literal: true

require 'active_support/core_ext/object/blank'

module Sequel
  class Model
    def validates_at_least_one(attrs)
      atts = Array(attrs)
      errors.add(:base, "At least one of the following attributes must be present: #{atts}") unless atts.any? { |attr| send(attr).present? }
    end
  end
end
