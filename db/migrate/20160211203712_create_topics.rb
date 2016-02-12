class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :body
      t.integer :user_id
      t.integer :event_id
      t.references :user, index: true
      t.references :event, index: true

      t.timestamps
    end
  end
end
