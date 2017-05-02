class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :content
      t.datetime :schedule_at
      t.string :place
      t.integer :user_id
      t.string :username

      t.timestamps
    end
  end
end
