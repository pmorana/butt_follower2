class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :subscription, index: true
      t.string :event_name

      t.timestamps
    end
  end
end
