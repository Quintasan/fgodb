# frozen_string_literal: true

class LineType < Sequel::Model
  one_to_many :lines
end
