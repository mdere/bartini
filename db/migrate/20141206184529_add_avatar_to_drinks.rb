class AddAvatarToDrinks < ActiveRecord::Migration
  def change
    add_attachment :drinks, :avatar
  end
end
