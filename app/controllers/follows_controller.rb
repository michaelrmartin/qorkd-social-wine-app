class FollowsController < ApplicationController

  def index

    @follows = Follow.all

    render json: follows.as_json
  
  end

  def create

    follow = Follow.find_by(user_id: current_user.id, follow_id: params[:follow_id])

    if !follow

      follow = Follow.new(
        user_id: current_user.id,
        follow_id: params[:follow_id]
      )

      if follow.save
        render json: {message: "Now following!"}
      else
        render json: {errors: follow.errors.full_messages}, status: 422
      end

    else
      
      render json: {message: "You are already following this user"}
    end
  
  end

  def destroy
    follow = Follow.find_by(id: params[:id])
    
    if follow
      follow.destroy
      render json: {message: "No longer following"}
    else
      render json: {errors: follow.errors.full_messages}, status: 422
    end

  end


end
