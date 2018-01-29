class DishesController < ApplicationController

  def index
    @dishes = Dish.all
    
  end

  def new
    
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def create
    dish = Dish.new
    dish.name = params[:name]
    if dish.save
      redirect_to '/dishes'
    else 
      render :new
    end    
  end

  def destroy
    @dish = Dish.find(params[:id])
    if @dish.destroy
      redirect_to '/dishes'
    else
      render :show
    end
  end
end
