class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all # get the restaurants list
  end

  def new
    @restaurant = Restaurant.new
  end

  # if form details are valid, redirect to entered restaurant details page else render the same form
  def create
    @restaurant = Restaurant.new(res_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  # get the restaurant by it's id
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  # strong params for security
  def res_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
