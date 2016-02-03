class Subscription < ActiveRecord::Base
	belongs_to :user
	has_many :user_sub
	has_many :users, through: :user_sub
	has_many :events
	has_many :alerts, through: :events
end
