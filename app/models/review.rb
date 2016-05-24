class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates_presence_of :author_name
  validates_presence_of :content
end
