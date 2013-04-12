class Micropost < ActiveRecord::Base
  has_many :post_likes
  attr_accessible :body, :name
end
