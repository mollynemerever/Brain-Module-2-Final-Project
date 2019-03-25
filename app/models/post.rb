class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :brains
end
