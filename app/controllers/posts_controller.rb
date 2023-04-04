class PostsController < ApplicationController

  def index
    @posts = Post.all

    render template: "posts/index"
  end

  def show
    post_id = params["id"]
    @post = Post.find_by(id: post_id)

    render template: "posts/show"

  end

  def create
    # response = Cloudinary::Uploader.upload(params[:image_file], resource_type: :auto)
    # cloudinary_url = response["secure_url"]

    post = Post.new(
      user_id: params[:user_id],
      wine_id: params[:wine_id],
      description: params[:description],
      rating: params[:rating],
      post_img_url: params[:post_img_url]
    )

    if post.save
      @post = post
      render template: "posts/show"
    else
      render json: { errors: post.errors.full_messages }, status: :bad_request
    end
  
  end

  def update
    post_id = params["id"]
    post = Post.find_by(id: post_id)

    post.user_id = post.user_id
    post.wine_id = params[:wine_id] || post.wine_id
    post.rating = params[:rating] || post.rating
    post.description = params[:description] || post.description
    post.post_img_url = params[:post_img_url] || post.post_img_url

    if post.save
      @post = post
      render template: "posts/show"
    else 
      render json: {errors: post.errors.full_messages} ,
      status: 422
    end

  end

  def destroy
    post = Post.find_by(id: params[:id])
    post.destroy
    render json: {message: "post successfully destroyed."}
  end

end
