class RemovePostIdFromUserInfluencerRelationships < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_influencer_relationships, :post_id
  end
end
