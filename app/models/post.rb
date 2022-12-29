class Post < ApplicationRecord
  belongs_to :user
  
  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

end
