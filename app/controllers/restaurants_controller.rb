class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    # get data from the form (params)
    # create a new Restaurant object/instance with that data!
    restaurant = Restaurant.new(restaurant_params)
    # save it
    restaurant.save
    # go somewhere...?
    redirect_to restaurant_path(restaurant)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
