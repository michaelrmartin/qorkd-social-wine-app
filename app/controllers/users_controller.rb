class UsersController < ApplicationController

  def index
    
    @users = User.all

    render template: "users/index"

  end

  def show 
    user_id = params["id"]
    @user = User.find_by(id: user_id)

    render template: "users/show"
  end

  def create

    cloudinary_url = "https://res.cloudinary.com/do4nbvqf0/image/upload/v1678142825/QORKD/Default-user-image_jh43or.jpg"
    
    user = User.new(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      name: params[:name] || "??",
      bio: params[:bio] || "??",
      phone: params[:phone] || "??",
      location: params[:location] || "??",
      user_img_url: params[:user_img_url] || cloudinary_url
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    user_id = params["id"]
    user = User.find_by(id: user_id)

    user.username = params[:username] || user.username
    user.email =  params[:email] || user.email
    user.password = params[:password] || user.password
    user.password_confirmation = params[:password_confirmation] || user.password_confirmation
    user.name = params[:name] || user.name
    user.bio = params[:bio] || user.bio
    user.phone = params[:phone] || user.phone
    user.location = params[:location] || user.location
    user.user_img_url = params[:user_img_url] || user.user_img_url

    if user.save
      render json: {message: "User info updated successfully"} 
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end

  end
  
  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: {message: "User successfully removed"}
  end

end
