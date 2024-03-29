class Post < ApplicationRecord

  belongs_to :user

  belongs_to :wine

  validates :rating, :user_id, :wine_id, presence: true
  validates :rating, numericality: { in: 0..5 }
  
  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def friendly_updated_at
    updated_at.strftime("%B %e, %Y")
  end

  def self.user_wine_ratings
    all.map do |post|
      {user_id: post.user_id, item_id: post.wine_id, rating: post.rating}
    end
  end

end
