class AddUserIdToPost < ActiveRecord::Migration
  def up
  	add_column :posts, :user_id, :integer
  end

  def down
  	remove_column :posts, :user_id, :integer
  end
end
