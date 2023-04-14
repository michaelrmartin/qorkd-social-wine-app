class WinesController < ApplicationController

  def index
    @wines = Wine.all.includes([:posts])

    render template: "wines/index"
  end

  def show
    wine_id = params["id"]
    @wine = Wine.includes(:posts).find_by(id: wine_id)

    render template: "wines/show"

  end

  def create
    wine = Wine.new(
      name: params[:name],
      blend: params[:blend],
      price: params[:price],
      origin: params[:origin],
      style: params[:style],
      photo_url: params[:photo_url],
      description: params[:description],
      vegan: params[:vegan],
      sparkling: params[:sparkling],
      color: params[:color],
      sweet: params[:sweet],
      organic: params[:organic]
    )

    if wine.save
      @wine = wine
      render template: "wines/show"
    else
      render json: {errors: wine.errors.full_messages}, status: 422
    end

  end

  def update
    wine_id = params["id"]
    wine = Wine.find_by(id: wine_id)

    wine.name = params[:name] || wine.name
    wine.blend = params[:blend] || wine.blend
    wine.price = params[:price] || wine.price
    wine.origin_id = params[:origin] || wine.origin
    wine.style = params[:style] || wine.style
    wine.description = params[:description] || wine.description
    wine.vegan = params[:vegan] || wine.vegan
    wine.color = params[:color] || wine.color
    wine.sparkling = params[:sparkling] || wine.sparkling
    wine.sweet = params[:sweet] || wine.sweet
    wine.photo_url = params[:photo_url] || wine.photo_url
    wine.organic = params[:organic] || wine.organic
    


    if wine.save
      @wine = wine
      render template: "wines/show"
    else 
      render json: {errors: wine.errors.full_messages} ,
      status: 422
    end

  end

  def destroy
    wine = Wine.find_by(id: params[:id])
    wine.destroy
    render json: {message: "Wine successfully destroyed."}
  end

end
