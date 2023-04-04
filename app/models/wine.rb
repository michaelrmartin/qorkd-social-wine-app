class Wine < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true

  belongs_to :origin
  has_many :posts


end
