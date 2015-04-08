class ChangeStringToIntegerInComment < ActiveRecord::Migration
  def up
  	change_column :comments, :post_id, :integer
  end

  def down
  	change_column :comments, :post_id, :string
  end
end
