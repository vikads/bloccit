require 'random_data'

 # Create Topics
 15.times do
   Topic.create!(
     name: RandomData.random_sentence,
     description: RandomData.random_sentence
   )
 end

 topics = Topic.all
 # Create SponsoredPosts

 50.times do

   SponsoredPost.create!(
     topic: topics.sample,
     title: RandomData.random_sentence,
     body: RandomData.random_paragraph,
     price: 100
   )
 end

 sponsored_posts  = SponsoredPost.all

 # Create Posts
 50.times do

   Post.create!(
     topic: topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end

 posts = Post.all

 # Create Comments
 100.times do

   Comment.create!(
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

 # Create Advertisement
 50.times do

   Advertisement.create(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    price: 100
  )
 end

 # Create Question
 50.times do

   Question.create(
     title: RandomData.random_sentence,
     body: RandomData.random_paragraph,
     resolved: false
   )
 end

 puts "#{Post.count}"
 post = Post.find_or_create_by(title: "Very unique title", body: "More unique body")
 puts "#{Post.count}"

 puts "#{Comment.count}"
 #puts post
 Comment.find_or_create_by(post: post, body: "Very unique comment")
 puts "#{Comment.count}"


 puts "Seed finished"
 puts "#{Topic.count} topics created"
 puts "#{SponsoredPost.count} sponsored posts created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{Advertisement.count} ads created"
 puts "#{Question.count} questions created"
