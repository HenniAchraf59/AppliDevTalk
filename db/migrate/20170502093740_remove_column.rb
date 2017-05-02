class RemoveColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :User_Name
    remove_column :registers, :User_name
  end
end
