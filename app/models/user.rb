class User < ApplicationRecord
  require 'faker'

  has_secure_password
  validates :email, presence: true, uniqueness: true
  

  has_one :user_profile
  has_many :posts
  has_many :wines, through: :posts

  # def recommendations

  #   data = [
  #     {user_id: 1, item_id: 1, rating: 5},
  #     {user_id: 1, item_id: 2, rating: 4},
  #     {user_id: 1, item_id: 3, rating: 3},
  #     {user_id: 1, item_id: 4, rating: 2},
  #     {user_id: 2, item_id: 1, rating: 1},
  #     {user_id: 2, item_id: 2, rating: 2},
  #     {user_id: 2, item_id: 3, rating: 3},
  #     {user_id: 2, item_id: 4, rating: 4},{user_id: 3, item_id: 1, rating: 3},
  #     {user_id: 3, item_id: 2, rating: 2},
  #     {user_id: 3, item_id: 3, rating: 5},
  #     {user_id: 3, item_id: 4, rating: 4},
  #     {user_id: 3, item_id: 5, rating: 4},
  #     {user_id: 4, item_id: 1, rating: 4},
  #     {user_id: 4, item_id: 2, rating: 3},
  #     {user_id: 4, item_id: 3, rating: 2},
  #     {user_id: 4, item_id: 4, rating: 5},
  #     {user_id: 4, item_id: 6, rating: 4},
  #   ]

  #   recommender = Disco::Recommender.new

  #   recommender.fit(data)

  #   user_recs = recommender.user_recs(3)
  #   item_recs = recommender.item_recs(1)
  #   similar_users = recommender.similar_users(3)

  #   return {user_recs: user_recs, item_recs: item_recs, similar_users: similar_users}

  # end

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



end
