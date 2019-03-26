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

#5 users

u1 = User.create(name: "Molly Nemerever", city: "Seattle", email: "molly@gmail.com", professional_industry: "Software Engineering", about_me: "Hi! Looking to connect with other users.")
u2 = User.create(name: "Njenga Kariuki", city: "Seattle", email: "njenga@aol.com", professional_industry: "Software Engineering", about_me: "Greetings! Hoping to learn from other professionals.")
u3 = User.create(name: "Sally Staples", city: "Portland", email: "sstaples@gmail.com", professional_industry: "Technology Consulting", about_me: "Looking to inspire others through technology.")
u4 = User.create(name: "Sam Smith", city: "New York", email: "samuelsmith@hotmail.com", professional_industry: "Data Science", about_me: "Hope to broaden my professional development through this site.")
u5 = User.create(name: "Alex Adams", city: "Los Angeles", email: "alexa123@yahoo.com", professional_industry: "Cyber Security", about_me: "I love to read and educate others about cyber security. ")


#user relationships
uf1 = UserInfluencerRelationship.create(user_id: u1.id, influencer_id: u2.id )
uf2 = UserInfluencerRelationship.create(user_id: u1.id, influencer_id: u3.id )
uf3 = UserInfluencerRelationship.create(user_id: u1.id, influencer_id: u3.id )
uf4 = UserInfluencerRelationship.create(user_id: u2.id, influencer_id: u3.id )
uf5 = UserInfluencerRelationship.create(user_id: u2.id, influencer_id: u4.id )
uf6 = UserInfluencerRelationship.create(user_id: u2.id, influencer_id: u5.id )
uf7 = UserInfluencerRelationship.create(user_id: u3.id, influencer_id: u1.id )
uf8 = UserInfluencerRelationship.create(user_id: u3.id, influencer_id: u2.id )
uf9 = UserInfluencerRelationship.create(user_id: u3.id, influencer_id: u4.id )
uf10 = UserInfluencerRelationship.create(user_id: u4.id, influencer_id: u5.id )
uf10 = UserInfluencerRelationship.create(user_id: u4.id, influencer_id: u2.id )
uf10 = UserInfluencerRelationship.create(user_id: u4.id, influencer_id: u1.id )
uf10 = UserInfluencerRelationship.create(user_id: u5.id, influencer_id: u2.id )
uf10 = UserInfluencerRelationship.create(user_id: u5.id, influencer_id: u3.id )
uf10 = UserInfluencerRelationship.create(user_id: u5.id, influencer_id: u4.id )
uf10 = UserInfluencerRelationship.create(user_id: u5.id, influencer_id: u1.id )



#6 posts

p1 = Post.create(title: "Cracking Coding - You Gotta Read This!", content_type: "book", content_link: "https://www.amazon.com/Cracking-Coding-Interview-Programming-Questions/dp/0984782850?ref_=Oct_BSellerC_2576_0&pf_rd_p=89808df1-4ad8-5c41-9871-2119b4cfd099&pf_rd_s=merchandised-search-6&pf_rd_t=101&pf_rd_i=2576&pf_rd_m=ATVPDKIKX0DER&pf_rd_r=D60Y980XYGANNS2V1PGH&pf_rd_r=D60Y980XYGANNS2V1PGH&pf_rd_p=89808df1-4ad8-5c41-9871-2119b4cfd099", description: "Influential Thoughts", user_id: u1.id)
sleep(5)
p2 = Post.create(title: "Would Definitely Recommend This Podcast", content_type: "podcast", content_link: "https://jamesaltucher.com/podcast/ramit-sethi-what-does-it-really-mean-to-have-a-rich-life/", description: "This Inspired Me", user_id: u2.id)
sleep(5)
p3 = Post.create(title: "Found A Gem Of An Article To Revamp Your Emails", content_type: "article", content_link: "https://www.linkedin.com/pulse/20141121004606-19607530-the-greatest-email-you-ll-ever-send/", description: "Must Read", user_id: u3.id)
sleep(5)
p4 = Post.create(title: "Feeling Energized After This Podcast", content_type: "podcast", content_link: "https://itunes.apple.com/us/podcast/charged-life-brendon-burchard/id821746377?mt=2", description: "Changed My Life", user_id: u4.id)
sleep(5)
p5 = Post.create(title: "Design Your Life - I Did!", content_type: "book", content_link: "https://www.amazon.com/Designing-Your-Life-Well-Lived-Joyful/dp/1101875321?ref_=Oct_BSellerC_2576_1&pf_rd_p=89808df1-4ad8-5c41-9871-2119b4cfd099&pf_rd_s=merchandised-search-6&pf_rd_t=101&pf_rd_i=2576&pf_rd_m=ATVPDKIKX0DER&pf_rd_r=D60Y980XYGANNS2V1PGH&pf_rd_r=D60Y980XYGANNS2V1PGH&pf_rd_p=89808df1-4ad8-5c41-9871-2119b4cfd099", description: "Professional Wisdom", user_id: u5.id)
sleep(5)
p6 = Post.create(title: "Two Minutes Makes A Huge Difference", content_type: "article", content_link: "https://www.linkedin.com/pulse/20141124163631-24454816-two-minutes-to-make-you-happier-at-work-in-life-and-over-the-holidays/", description: "Career Development Must Knows", user_id: u5.id)


#5 comments
c1 = Comment.create(user_id: u5.id, post_id: p1.id, text: "inspirational")
c2 = Comment.create(user_id: u4.id, post_id: p2.id, text: "Thanks for sharing")
c3 = Comment.create(user_id: u3.id, post_id: p3.id, text: "Great Read!")
c4 = Comment.create(user_id: u2.id, post_id: p4.id, text: "Agreed!")
c5 = Comment.create(user_id: u1.id, post_id: p5.id, text: "Life Changing")


#5 brains
b1 = Brain.create(user_id: u5.id, post_id: p1.id)
b1 = Brain.create(user_id: u4.id, post_id: p2.id)
b1 = Brain.create(user_id: u3.id, post_id: p3.id)
b1 = Brain.create(user_id: u2.id, post_id: p4.id)
b1 = Brain.create(user_id: u1.id, post_id: p5.id)
