class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id].to_i)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    redirect_to(Restaurant.last)
  end

  def edit
    @restaurant = Restaurant.find(params[:id].to_i)
  end

  def update
    @restaurant = Restaurant.find(params[:id].to_i)
    @restaurant.update(restaurant_params)
    redirect_to restaurants_path
  end

  def destroy
    @restaurant = Restaurant.find(params[:id].to_i)
    @restaurant.delete
    redirect_to restaurants_path
  end
end


private

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :phone_number, :category)
end
