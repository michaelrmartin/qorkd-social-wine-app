class UserProfilesController < ApplicationController
  
  def index
    @user_profiles = UserProfile.all

    render template: "user_profiles/index"
  end

  def show
    user_id = params["id"]
    @user_profile = UserProfile.find_by(id: user_id)

    render template: "user_profiles/show"

  end

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

  def update
    user_id = params["id"]
    user_profile = UserProfile.find(
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
