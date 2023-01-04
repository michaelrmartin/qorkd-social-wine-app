class UserProfilesController < ApplicationController
  
  def index
    @user_profiles = UserProfile.all

    render template: "user_profiles/index"
  end

  def show

    @user_profile = UserProfile.find_by(user_id: params[:id])

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
    response = Cloudinary::Uploader.upload(params[:image_file], resource_type: :auto)
    cloudinary_url = response["secure_url"]

    user_profile = UserProfile.find_by(user_id: params[:id])
      user_profile.name = params[:name] || user_profile.name
      user_profile.bio = params[:bio] || user_profile.bio
      user_profile.phone = params[:phone] || user_profile.phone
      user_profile.location = params[:location] || user_profile.location
      user_profile.user_img_url = cloudinary_url || user_profile.user_img_url
    
    
    if user_profile.save
      @user_profile = user_profile

      render template: "user_profiles/show"
    else
      render json: { errors: user_profile.errors.full_messages }, status: 422
    end

  end

  def destroy
    user_profile = UserProfile.find_by(user_id: params[:id])
    user_profile.destroy
    render json: {message: "User Profile successfully destroyed."}
  end

end
