class AddIndexToUserSubs < ActiveRecord::Migration
  def change
  	add_index :user_subs, [:user_id, :subscription_id], unique: true
  end
end
