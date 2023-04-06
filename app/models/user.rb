class User < ApplicationRecord
  require 'faker'

  has_secure_password
  validates :email, presence: true, uniqueness: true
  

  has_one :user_profile
  has_many :posts
  has_many :wines, through: :posts
  has_many :follows
  has_many :followings, through: :follows

  # Generates demo users and user profiles

  def self.generate_users(num_users)

    num_users.times do
      name = Faker::TvShows::Simpsons.character 
      username = Faker::Internet.unique.username(specifier: name, separators: %w(. _ -))
      email = Faker::Internet.unique.email(name: username)

      user = User.create!(
        username: username,
        email: email,
        password: "password",
        password_confirmation: "password"
      )

      UserProfile.create!(
        name: name,
        user_img_url: Faker::Avatar.image,
        bio: Faker::TvShows::Simpsons.quote,
        phone: Faker::PhoneNumber.cell_phone,
        location: Faker::Address.city + ", " + Faker::Address.state_abbr,
        user_id: user.id
      )

    end

  end

  def user_recommendations

    data = Post.user_wine_ratings

    recommender = Disco::Recommender.new

    recommender.fit(data)

    user_recs = recommender.user_recs(self.id)
    similar_users = recommender.similar_users(self.id)

    return {user_recs: user_recs, similar_users: similar_users}

  end

  def follows_array

    self.follows.map {|follow| follow.follow.id}

  end

  def num_followed
    self.followings.length
  end

  def num_followers
    users = User.all.includes(:follows)
    count = 0
    users.each do |user|
      count += 1 if user.follows_aray.include?(self.id)
    end
    count
  end
  

  def num_unique_wines
    result = []
    ids = []
    self.posts.each do |post|
      unless ids.include?(post.wine_id)
        ids << post.wine_id
        result << post
      end
    end
    result.length
  end



end
