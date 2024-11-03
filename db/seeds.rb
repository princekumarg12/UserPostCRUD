# db/seeds.rb

# Clear existing data
Comment.destroy_all
Post.destroy_all
User.destroy_all

# Default password
default_password = "123456"

# Sample topics for comments
topics = [
  "What do you think about the latest trends in technology?",
  "How do you feel about remote work?",
  "What's your favorite book and why?",
  "What hobbies do you enjoy?",
  "If you could travel anywhere, where would it be?",
  "What are your thoughts on climate change?",
  "How do you unwind after a long day?",
  "What’s the best piece of advice you’ve ever received?"
]

# Sample tech-related content
tech_content = [
  "The rise of artificial intelligence is transforming industries at an unprecedented pace.",
  "Cloud computing is changing the way businesses operate, allowing for greater flexibility and efficiency.",
  "Blockchain technology is not just for cryptocurrencies; it has the potential to revolutionize various sectors.",
  "Cybersecurity remains a critical concern as more devices become interconnected.",
  "The future of virtual reality and augmented reality looks promising in enhancing user experiences.",
  "5G technology is set to redefine connectivity and mobile experiences.",
  "Data science and analytics are key to making informed business decisions.",
  "The Internet of Things (IoT) is creating smarter homes and cities."
]

# Create 5 users with unique usernames
5.times do |i|
  first_name = "First#{i+1}"
  last_name = "Last#{i+1}"
  username = "#{first_name.downcase}#{last_name.downcase}" # Concatenate first and last name for username

  user = User.create!(
    email: "user#{i+1}@example.com",
    first_name: first_name,
    last_name: last_name,
    username: username,
    gender: ["Male", "Female"].sample,
    age: rand(18..50),
    password: default_password,
    password_confirmation: default_password
  )

  # Create 3 posts for each user
  3.times do |j|
    random_content = tech_content.sample # Choose a random tech-related content
    post = user.posts.create!(
      title: "Post Title #{j+1} by #{username}",
      content: random_content
    )

    # Create comments on each post by all users
    User.all.each do |commenter|
      random_topic = topics.sample # Choose a random topic
      post.comments.create!(
        comment_box: "#{commenter.username}: #{random_topic} What are your thoughts?",
        user_id: commenter.id
      )
    end
  end
end

puts "Seed data created successfully!"
