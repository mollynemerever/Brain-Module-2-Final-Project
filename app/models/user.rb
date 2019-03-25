class User < ApplicationRecord
  has_many :user_influencer_relationships
  has_many :posts
  has_many :brains
  has_many :comments 
end
