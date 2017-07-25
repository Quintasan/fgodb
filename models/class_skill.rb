# frozen_string_literal: true

class ClassSkill < Sequel::Model
  many_to_one :rank
end
