class AddUserNameToRegisters < ActiveRecord::Migration[5.0]
  def change
    add_column :registers, :username, :string
  end
end
