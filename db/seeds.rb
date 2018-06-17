require 'random_data'

# Create Users
5.times do
  User.create!(
    name: RandomData.random_name,
    email: RandomData.random_email,
    password: RandomData.random_sentence
  )
end
users = User.all



 # Create Topics
 15.times do
   Topic.create!(
     name: RandomData.random_sentence,
     description: RandomData.random_paragraph
   )
 end
 topics = Topic.all

 # Create Posts
 50.times do

   Post.create!(
     user: users.sample,
     topic: topics.sample,
     title:  RandomData.random_sentence,  #Faker::Lorem.sentence,
     body:  RandomData.random_paragraph  # Faker::Lorem.paragraph
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

 # create admin user
 admin = User.create!(
   name: 'Admin User!',
   email: 'admin@example.com',
   password: 'helloworld',
   role: 'admin'
 )

 # create a memeber
 member = User.create!(
   name: 'Member User',
   email: 'member@example.com',
   password: 'hellowrld'
 )

 puts "#{Post.count}"
 post = Post.find_or_create_by(title: "Very unique title", body: "More unique body")
 puts "#{Post.count}"

 puts "#{Comment.count}"
 #puts post
 Comment.find_or_create_by(post: post, body: "Very unique comment")
 puts "#{Comment.count}"


 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{Advertisement.count} ads created"
 puts "#{Question.count} questions created"
