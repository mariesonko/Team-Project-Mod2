class HangoutsController < ApplicationController

  def index
    @hangouts = Hangout.all
  end

  def show
    @hangout = Hangout.find(params[:id])
  end

  def new
    @hangout = Hangout.new
  end

  def create

  end

  def edit
    @hangout = Hangout.find(params[:id])
  end

  def update
      @hangout = Hangout.find(params[:id])
      redirect_to user_path(session[:current_user_id])
  end

end
