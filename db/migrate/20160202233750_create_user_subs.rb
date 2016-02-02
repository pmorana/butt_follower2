class CreateUserSubs < ActiveRecord::Migration
  def change
    create_table :user_subs do |t|
      t.references :user, index: true
      t.references :subscription, index: true

      t.timestamps
    end
  end
end
