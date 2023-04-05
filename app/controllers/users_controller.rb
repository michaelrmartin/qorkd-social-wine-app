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
    user = User.new(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
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
    user.password_confirmation = params[:password_confirmation] || user.password

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
