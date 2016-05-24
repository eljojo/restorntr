class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy

  validates_presence_of :name
  validates_presence_of :content
  validates_presence_of :lat
  validates_presence_of :lon
end
