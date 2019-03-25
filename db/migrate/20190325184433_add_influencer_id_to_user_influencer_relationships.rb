class AddInfluencerIdToUserInfluencerRelationships < ActiveRecord::Migration[5.2]
  def change
    add_column :user_influencer_relationships, :influencer_id, :integer
  end
end
