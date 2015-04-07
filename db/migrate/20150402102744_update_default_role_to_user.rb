class UpdateDefaultRoleToUser < ActiveRecord::Migration
  def up
  	change_column :users, :role, :boolean, :default => 0
  end

  def down
  end
end
