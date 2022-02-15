class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
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

  def edit
  end

  def update
    # find the restaurant by its id
    # update it with the data from params
    # redirect to show page for the restaurant
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    # find the restaurant by its id
    # destroy it
    # redirect to index page
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  # Strong params - whitelisted values which we will permit
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
