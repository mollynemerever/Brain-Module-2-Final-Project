class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :brains

  def sorted_comments
    self.comments.sort_by do |comment|
      comment.created_at
    end.reverse
  end

  def self.search(search)
    if search #if the user searched
      @posts = self.where(content_type: search)
      if @posts.length >= 1 #if at least one post returned
        @posts
      else
        @posts = nil
      end
    else
      @posts = Post.all #if no search value return all 
    end
  end


end
