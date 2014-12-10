class CreateUserLikeAssociation < ActiveRecord::Migration
  def change
    create_table :user_like_associations do |t|
      t.integer :drink_id
      t.integer :user_account_id
      t.boolean :like

      t.timestamps
    end
  end
end
