class Illustrator < Sequel::Model
  def validate
    super
    validates_presence :first_name if nickname.blank? && last_name.blank?
    validates_presence :nickname if first_name.blank? && last_name.blank?
    validates_presence :last_name if first_name.blank? && nickname.blank?
  end
end
