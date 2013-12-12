class FoodsController < ApplicationController

  def index
  end

  def create
    @restaurant = Restaurant.find(food_params[:restaurant_id])
    @food = @restaurant.foods.build(food_params)
    if @food.save
      redirect_to @restaurant
    else
      redirect_to 'static_pages#help'
    end
  end

  def destroy
  end

  private 
    
    def food_params
      params.require(:food).permit(:name, :price, :restaurant_id)
    end
end
