class Drink < ActiveRecord::Base 
  has_many :drink_associations
  has_many :ingredients, :through => :drink_associations

  has_many :user_comment_association
  has_many :user_accounts, :through => :user_comment_association
  has_many :comments, :through => :user_comment_association

  has_many :user_like_association
  has_many :user_accounts, :through => :user_comment_association
  has_many :likes, :through => :user_comment_association  

  has_attached_file(
    :avatar, 
    :styles => {
      :medium => "200x200>", 
      :thumb => "100x100>" }, 
      :default_url => "/images/:style/missing.png"
  )
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	def set_drink_visibility_true(drink_id, user_id)

	end

  def set_drink_visibility_false(drink_id, user_id)

  end

end