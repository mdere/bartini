class Ingredient < ActiveRecord::Base
  belongs_to :weight_type
  has_many :drink_associations
  has_many :drinks, :through => :drink_associations

  def name_and_measure
    "#{self.ingredient_name}        (#{self.weight_type.measure_type})"
  end
end