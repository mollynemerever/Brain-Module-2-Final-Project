class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :brains



  def sorted_comments
    self.comments.sort_by do |comment|
      comment.created_at
    end.reverse
  end


end
