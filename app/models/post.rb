class Post < ApplicationRecord
  belongs_to :user
  has_one :wine
  
  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def friendly_updated_at
    updated_at.strftime("%B %e, %Y")
  end

end
