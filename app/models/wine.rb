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

end
