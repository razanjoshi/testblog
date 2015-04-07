class AddDefaultRoleToUser < ActiveRecord::Migration
  def change
  	change_column :users, :role, :boolean, :default => 1
  end
end
