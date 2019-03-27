class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  def find_user
    User.find(self.user_id).name
  end 
end
