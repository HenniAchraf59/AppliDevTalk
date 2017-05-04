class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :content
      t.datetime :scheduled_at
      t.text :place

      t.timestamps
    end
  end
end
