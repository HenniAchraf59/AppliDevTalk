class AddUsernameToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :username, :string
  end
end
