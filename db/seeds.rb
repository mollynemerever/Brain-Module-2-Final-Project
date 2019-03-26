# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all
UserInfluencerRelationship.destroy_all
Comment.destroy_all
Brain.destroy_all

u1 = User.create(name: "Molly")
u2 = User.create(name: "Njenga")
u3 = User.create(name: "Sally")
u4 = User.create(name: "Sam")

uf1 = UserInfluencerRelationship.create(user_id: u1.id, influencer_id: u2.id )
uf2 = UserInfluencerRelationship.create(user_id: u2.id, influencer_id: u3.id )
uf2 = UserInfluencerRelationship.create(user_id: u1.id, influencer_id: u3.id )

p1 = Post.create(title: "Post One", content_type: "book", content_link: "amazon", description: "Influential Thoughts", user_id: u2.id)
sleep(5)
p2 = Post.create(title: "Post Two", content_type: "podcast", content_link: "podcastlink", description: "Influential Thoughts2", user_id: u3.id)

c1 = Comment.create(user_id: u1.id, post_id: p1.id, text: "inspirational")

b1 = Brain.create(user_id: u1.id, post_id: p1.id)
