class UserCommentAssociation < ActiveRecord::Base
  belongs_to :user_account
  belongs_to :drink

end