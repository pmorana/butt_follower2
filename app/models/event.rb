class Event < ActiveRecord::Base
  belongs_to :subscription
  has_many :alerts
  has_many :topics
end
