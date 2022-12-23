class Wine < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true

  has_one :origin

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

end
