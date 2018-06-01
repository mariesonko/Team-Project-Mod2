class RestaurantsController < ApplicationController

def index
    @restaurants = Restaurant.search(params[:search])
    if params[:search]
        @restaurants = Restaurant.search(params[:search])
      else
        @restaurants = Restaurant.all
      end
    end


end
