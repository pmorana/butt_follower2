class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :subscription_name
      t.references :user, index: true

      t.timestamps
    end
  end
end
