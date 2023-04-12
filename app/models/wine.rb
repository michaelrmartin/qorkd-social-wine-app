class Wine < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true

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

  def
    self.top_rated_wines
    rated = {}
    Wine.all.each do |wine|
      rated[wine.name] = {rating: wine.overall_rating, wine_id: wine.id}
    end
    rated.sort_by {|k, v| v[:rating]}.reverse.take(5).to_h
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

    wine_recs = []
    item_recs.each do |rec|
      wine_id = rec[:item_id]
      wine = Wine.find_by(id: wine_id)
      wine_recs << wine
    end
    
    return {item_recs: wine_recs}

  end


  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def friendly_updated_at
    updated_at.strftime("%B %e, %Y")
  end

end
