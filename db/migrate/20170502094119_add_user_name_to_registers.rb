class AddUserNameToRegisters < ActiveRecord::Migration[5.0]
  def change
    add_column :registers, :user_name, :string
  end
end
