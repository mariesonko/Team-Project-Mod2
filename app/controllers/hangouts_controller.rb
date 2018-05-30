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
    @hangout= Hangout.new(hangout_params)
    @user = User.find_or_create_by(name: params[:user][:name])
    @hangout.user = @user

    if @hangout.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def edit
    @hangout = Hangout.find(params[:id])
  end

  def update
      @hangout = Hangout.find(params[:id])
      redirect_to user_path(session[:current_user_id])
  end

  private
  def hangout_params
  params.require(:hangout).permit(:date, :time, :restaurant_id)
  end


end
