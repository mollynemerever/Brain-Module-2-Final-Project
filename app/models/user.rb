class User < ApplicationRecord
  has_many :user_influencer_relationships
  has_many :posts
  has_many :brains
  has_many :comments
  has_secure_password

  def find_influencers

    #find user-influencer relationships from join table
    influencer_ids = UserInfluencerRelationship.where("user_id = ?", self.id).pluck("influencer_id")
     #byebug
    #find user instances tied to the id
    influencer_objects = Array.new
     influencer_ids.each do |inf|
         influencer_objects << User.find(inf)
     end
     #turn list of influencers into hash
     influencer_data = Hash.new
      influencer_objects.each do |inf|
          latest_post = inf.posts.last
          influencer_data[inf.name] = {}
          influencer_data[inf.name][:latest_post_title] = latest_post.title
          influencer_data[inf.name][:latest_post_date] = (latest_post.created_at.strftime("%B, %d, %Y"))
          influencer_data[inf.name][:user_id] = latest_post.user_id
          influencer_data[inf.name][:post_id] = latest_post.id
     end
  #sort by created_at
      influencer_data.sort_by do | name, latest_post|
          latest_post[:created_at]
      end
  end

def influencer_ids
  influencer_ids = UserInfluencerRelationship.where("user_id = ?", self.id).pluck("influencer_id")
end


end
