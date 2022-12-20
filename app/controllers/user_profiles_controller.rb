class UserProfilesController < ApplicationController

  def create
    user_profile = UserProfile.new(
      user_id: params[:user_id],
      name: " ",
      bio: " ",
      phone: " ",
      location: " ",
      user_img_url: " "
    )
    
    if user_profile.save
      render json: { message: "User Profile created successfully" }, status: :created
    else
      render json: { errors: user_profile.errors.full_messages }, status: :bad_request
    end
  end

end
