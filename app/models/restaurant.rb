class Restaurant < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :content
  validates_presence_of :lat
  validates_presence_of :lon
end
