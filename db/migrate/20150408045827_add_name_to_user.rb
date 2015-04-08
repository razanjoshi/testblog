class AddNameToUser < ActiveRecord::Migration
  def up
  	add_column :users, :name, :string
  	add_column :users, :phone, :string
  end

  def down
  	remove_column :users, :name, :string
  	remove_column :users, :phone, :string
  end
end
