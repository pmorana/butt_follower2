class Topic < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  belongs_to :event
  #has_many :comments
end
