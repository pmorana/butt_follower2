class UserSub < ActiveRecord::Base
  belongs_to :user
  belongs_to :subscription
  #validates :user_id, presence: true
 # validates :subscription_id, presence: true
end
