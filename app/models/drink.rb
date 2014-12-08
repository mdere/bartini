class Drink < ActiveRecord::Base 
  has_many :drink_associations
  has_many :ingredients, :through => :drink_associations

  has_attached_file(
    :avatar, 
    :styles => {
      :medium => "300x300>", 
      :thumb => "100x100>" }, 
      :default_url => "/images/:style/missing.png"
  )
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	def set_drink_visibility_true(drink_id, user_id)

	end

  def set_drink_visibility_false(drink_id, user_id)

  end

end