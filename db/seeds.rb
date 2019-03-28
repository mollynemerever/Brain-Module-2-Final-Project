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

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

# users

#u1 = User.create(name: "Molly Nemerever", username: "Molly", about_me: "Hi! Looking to connect with other users.", password: "test", password_confirmation: "test")
#u2 = User.create(name: "Njenga Kariuki", username: "Njenga", about_me: "Greetings! Hoping to learn from other professionals.", password: "test", password_confirmation: "test")
u3 = User.create(name: "Richard Branson", username: "lilrichie", about_me: "Call me Sir Richard.", password: "test", photo_url: "https://www.ashoka.org/sites/default/files/styles/scald_large/public/richard-branson.jpg?itok=AgweJv-f", password_confirmation: "test")
u4 = User.create(name: "Tim Cook", username: "timapple", about_me: "Let's work together. Passion grows in numbers.", photo_url: "https://fortunedotcom.files.wordpress.com/2015/03/9826_01_0153.jpg",password: "test", password_confirmation: "test")
u5 = User.create(name: "Bill Gates", username: "billy", about_me: "Here to meet others.", photo_url: "https://fm.cnbc.com/applications/cnbc.com/resources/img/editorial/2018/07/11/105322791-1531301768595gettyimages-467620670.1910x1000.jpg", password: "test", password_confirmation: "test")
u6 = User.create(name: "Arianna Huffington", username: "ahuffreads", about_me: "Never done learning.", photo_url: "https://s-s.huffpost.com/contributors/arianna-huffington/headshot.jpg", password: "test", password_confirmation: "test")
u7 = User.create(name: "Mark Cuban", username: "mcubanooo", about_me: "I can spy a scam from a mile away.", photo_url: "https://www.biography.com/.image/t_share/MTI1OTgwMTM3NzYxMDI0NjQz/mark-cuban-courtesy-abc-croppedjpg.jpg", password: "test", password_confirmation: "test")
u8 = User.create(name: "Elon Musk", username: "elony", about_me: "Nothing is impossible.", photo_url: "https://media.wired.com/photos/5c83219a692d1216df5ce666/master/pass/Transpo-Elon-Musk-RTX6P9YW.jpg", password: "test", password_confirmation: "test")
u9 = User.create(name: "Satya Nadella", username: "snadella", about_me: "Computers and Code.", photo_url: "https://pbs.twimg.com/profile_images/543839436761358336/iRi_WbYY_400x400.jpeg", password: "test", password_confirmation: "test")
u10 = User.create(name: "Sheryl Sandberg", username: "Alex", about_me: "Facebook. Like it!", photo_url: "https://si.wsj.net/public/resources/images/WW-AA745_SANDBE_P_20171005153924.jpg", password: "test", password_confirmation: "test")
u11 = User.create(name: "Ina Garten", username: "ladychef123", about_me: "The kitchen is the heart of the home.", photo_url: "https://d213sdapb08052.cloudfront.net/site/ui/ask-ina-hero.jpg", password: "test", password_confirmation: "test")
u12 = User.create(name: "Marissa Mayer", username: "mmayer", about_me: "Yahoo", photo_url: "https://media3.s-nbcnews.com/j/newscms/2017_02/1859906/170109-marissa-mayer-rhk-2240p_a0bb23913b2e385f36c4344e0e49fbc6.fit-760w.JPG", password: "test", password_confirmation: "test")
u13 = User.create(name: "Diane Von Furstenberg", username: "dvf", about_me: "Fashion is the window to the soul.", photo_url: "https://i.mdel.net/i/db/2014/11/322679/322679-500w.jpg", password: "test", password_confirmation: "test")
u14 = User.create(name: "LeBron James", username: "GOAT", about_me: "Atheltics and Academics", photo_url: "http://ssref.net/scripts/image_resize.cgi?min=200&url=https://d2cwpp38twqe55.cloudfront.net/req/201902151/images/players/jamesle01.jpg", password: "test", password_confirmation: "test")
u15 = User.create(name: "Usain Bolt", username: "BoltBaby", about_me: "Catch me if you can!", photo_url: "https://akm-img-a-in.tosshub.com/indiatoday/images/story/201708/bolt-story-647_082117010843.jpg", password: "test", password_confirmation: "test")


#user relationships
uf1 = UserInfluencerRelationship.create(user_id: u3.id, influencer_id: u15.id )
uf2 = UserInfluencerRelationship.create(user_id: u4.id, influencer_id: u3.id )
uf3 = UserInfluencerRelationship.create(user_id: u5.id, influencer_id: u3.id )
uf4 = UserInfluencerRelationship.create(user_id: u6.id, influencer_id: u3.id )
uf5 = UserInfluencerRelationship.create(user_id: u7.id, influencer_id: u4.id )
uf6 = UserInfluencerRelationship.create(user_id: u8.id, influencer_id: u5.id )
uf7 = UserInfluencerRelationship.create(user_id: u3.id, influencer_id: u14.id )
uf8 = UserInfluencerRelationship.create(user_id: u3.id, influencer_id: u13.id )
uf9 = UserInfluencerRelationship.create(user_id: u3.id, influencer_id: u4.id )
uf10 = UserInfluencerRelationship.create(user_id: u4.id, influencer_id: u5.id )
uf11 = UserInfluencerRelationship.create(user_id: u4.id, influencer_id: u12.id )
uf12 = UserInfluencerRelationship.create(user_id: u4.id, influencer_id: u11.id )
uf13 = UserInfluencerRelationship.create(user_id: u5.id, influencer_id: u12.id )
uf14 = UserInfluencerRelationship.create(user_id: u5.id, influencer_id: u3.id )
uf15 = UserInfluencerRelationship.create(user_id: u5.id, influencer_id: u4.id )
uf16 = UserInfluencerRelationship.create(user_id: u6.id, influencer_id: u15.id )
uf17 = UserInfluencerRelationship.create(user_id: u7.id, influencer_id: u14.id )
uf18 = UserInfluencerRelationship.create(user_id: u8.id, influencer_id: u13.id )
uf19 = UserInfluencerRelationship.create(user_id: u9.id, influencer_id: u12.id )
uf20 = UserInfluencerRelationship.create(user_id: u10.id, influencer_id: u11.id )
uf21 = UserInfluencerRelationship.create(user_id: u11.id, influencer_id: u10.id )
uf22 = UserInfluencerRelationship.create(user_id: u12.id, influencer_id: u9.id )
uf23 = UserInfluencerRelationship.create(user_id: u13.id, influencer_id: u8.id )
uf24 = UserInfluencerRelationship.create(user_id: u14.id, influencer_id: u7.id )
uf25 = UserInfluencerRelationship.create(user_id: u15.id, influencer_id: u6.id )

# posts

p1 = Post.create(title: "Cracking Coding - You Gotta Read This!", content_type: "Book", content_link: "https://www.amazon.com/Cracking-Coding-Interview-Programming-Questions/dp/0984782850?ref_=Oct_BSellerC_2576_0&pf_rd_p=89808df1-4ad8-5c41-9871-2119b4cfd099&pf_rd_s=merchandised-search-6&pf_rd_t=101&pf_rd_i=2576&pf_rd_m=ATVPDKIKX0DER&pf_rd_r=D60Y980XYGANNS2V1PGH&pf_rd_r=D60Y980XYGANNS2V1PGH&pf_rd_p=89808df1-4ad8-5c41-9871-2119b4cfd099", description: "Influential Thoughts", user_id: u10.id)
p2 = Post.create(title: "Would Definitely Recommend This Podcast", content_type: "Podcast", content_link: "https://jamesaltucher.com/podcast/ramit-sethi-what-does-it-really-mean-to-have-a-rich-life/", description: "This Inspired Me", user_id: u12.id)
p3 = Post.create(title: "Found A Gem Of An Article To Revamp Your Emails", content_type: "Article", content_link: "https://www.linkedin.com/pulse/20141121004606-19607530-the-greatest-email-you-ll-ever-send/", description: "Must Read", user_id: u3.id)
p4 = Post.create(title: "Feeling Energized After This Podcast", content_type: "Podcast", content_link: "https://itunes.apple.com/us/podcast/charged-life-brendon-burchard/id821746377?mt=2", description: "Changed My Life", user_id: u4.id)
p5 = Post.create(title: "Design Your Life - I Did!", content_type: "Book", content_link: "https://www.amazon.com/Designing-Your-Life-Well-Lived-Joyful/dp/1101875321?ref_=Oct_BSellerC_2576_1&pf_rd_p=89808df1-4ad8-5c41-9871-2119b4cfd099&pf_rd_s=merchandised-search-6&pf_rd_t=101&pf_rd_i=2576&pf_rd_m=ATVPDKIKX0DER&pf_rd_r=D60Y980XYGANNS2V1PGH&pf_rd_r=D60Y980XYGANNS2V1PGH&pf_rd_p=89808df1-4ad8-5c41-9871-2119b4cfd099", description: "Professional Wisdom", user_id: u5.id)
p6 = Post.create(title: "Movivation Is An Interesting Thing...", content_type: "Article", content_link: "https://www.forbes.com/sites/forbescoachescouncil/2016/06/22/motivation-and-inspiration-your-allies-in-career-success/#443bd9222b95", description: "I definitely recommend this read.  Made me think about how I can better motivate my teammates AND myself. SCORE!", user_id: u14.id)
p7 = Post.create(title: "Five Career Blogs I Enourage Following", content_type: "Article", content_link: "https://www.themuse.com/advice/5-career-blogs-worth-a-read", description: "Read these five articles and share with your colleagues.", user_id: u6.id)
p8 = Post.create(title: "This Book Helped Me Define My Life Outside Of Running", content_type: "Book", content_link: "https://www.amazon.com/Start-up-You-Future-Yourself-Transform-ebook/dp/B0050DIWHU", description: "I don't read much, and this book taught me everything I know about business.", user_id: u15.id)
p9 = Post.create(title: "My Friend Eileen Fisher on How I Built This ", content_type: "Podcast", content_link: "https://www.npr.org/2019/02/22/697104124/eileen-fisher-eileen-fisher", description: "My lovely and dearest friend Eileen. She is so dear to me and runs an incredibly socially responsible business. Listen and enjoy. xoxo", user_id: u13.id)



#5 comments
c1 = Comment.create(user_id: u5.id, post_id: p1.id, text: "inspirational")
c2 = Comment.create(user_id: u4.id, post_id: p2.id, text: "Thanks for sharing")
c3 = Comment.create(user_id: u3.id, post_id: p3.id, text: "Great Read!")
c4 = Comment.create(user_id: u7.id, post_id: p4.id, text: "Agreed!")
c5 = Comment.create(user_id: u8.id, post_id: p5.id, text: "Life Changing")
c6 = Comment.create(user_id: u4.id, post_id: p5.id, text: "Sharing this will my friends")
c6 = Comment.create(user_id: u13.id, post_id: p6.id, text: "Agree!")
c8 = Comment.create(user_id: u8.id, post_id: p7.id, text: "I follow some of these too!")
c9 = Comment.create(user_id: u11.id, post_id: p8.id, text: "Thought provoking")
c10 = Comment.create(user_id: u12.id, post_id: p9.id, text: "Fun listen. ")


#5 brains
b1 = Brain.create(user_id: u5.id, post_id: p1.id)
b2 = Brain.create(user_id: u4.id, post_id: p2.id)
b3 = Brain.create(user_id: u3.id, post_id: p3.id)
b4 = Brain.create(user_id: u3.id, post_id: p4.id)
b5 = Brain.create(user_id: u9.id, post_id: p4.id)
b6 = Brain.create(user_id: u3.id, post_id: p4.id)
b7 = Brain.create(user_id: u4.id, post_id: p5.id)
b8 = Brain.create(user_id: u15.id, post_id: p5.id)
b9 = Brain.create(user_id: u6.id, post_id: p5.id)
b10 = Brain.create(user_id: u7.id, post_id: p5.id)
b11 = Brain.create(user_id: u13.id, post_id: p6.id)
b12 = Brain.create(user_id: u5.id, post_id: p7.id)
b13 = Brain.create(user_id: u9.id, post_id: p7.id)
b14 = Brain.create(user_id: u14.id, post_id: p7.id)
b15 = Brain.create(user_id: u12.id, post_id: p7.id)
b16 = Brain.create(user_id: u11.id, post_id: p8.id)
b17 = Brain.create(user_id: u11.id, post_id: p9.id)
b18 = Brain.create(user_id: u12.id, post_id: p9.id)
