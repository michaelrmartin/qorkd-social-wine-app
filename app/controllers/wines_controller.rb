class WinesController < ApplicationController

  def index
    @wines = Wine.all.includes([:posts])

    render template: "wines/index"
  end

  def show
    
    @wine = Wine.includes(:posts).find_by(id: params[:id])

    render template: "wines/show"

  end

  def create
    wine = Wine.new(wine_params)

    if wine.save
      @wine = wine
      render template: "wines/show"
    else
      render json: {errors: wine.errors.full_messages}, status: 422
    end

  end

  def update
    
    wine = Wine.find_by(id: params[:id])

    if wine.update(wine_params)
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

  private

  def wine_params
    params.require(:wine).permit(
      :name,
      :blend,
      :price,
      :origin,
      :style,
      :description,
      :vegan,
      :color,
      :sparkling,
      :sweet,
      :photo_url,
      :organic
    )
  end

end
