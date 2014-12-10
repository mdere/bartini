class CreateUserCommentAssociation < ActiveRecord::Migration
  def change
    create_table :user_comment_associations do |t|
      t.integer :drink_id
      t.integer :user_account_id
      t.text :comment

      t.timestamps
    end
  end
end
