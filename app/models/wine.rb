class Wine < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true

  belongs_to :origin

  has_many :posts

  def overall_rating
    total = 0
    if self.posts.length > 0
      self.posts.each do |post|
        total += post.rating
      end
    else
      return 0
    end
    return (total / self.posts.length).round(2)
  end

  def user_posts(user)
    count = 0
    self.posts.each do |post|
      if post.user_id == user.id
        count += 1
      end
    end
    count
  end

  def wine_recommendations

    data = Post.user_wine_ratings

    recommender = Disco::Recommender.new

    recommender.fit(data)

    item_recs = recommender.item_recs(self.id)
    

    return {item_recs: item_recs}

  end


  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def friendly_updated_at
    updated_at.strftime("%B %e, %Y")
  end

end
