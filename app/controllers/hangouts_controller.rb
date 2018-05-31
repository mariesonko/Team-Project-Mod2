class HangoutsController < ApplicationController

  def index
    @hangouts = Hangout.all

    if !logged_in?
      redirect_to login_path
    end
  end

  def show
    if !logged_in?
      redirect_to login_path
    else
    @hangout = Hangout.find(params[:id])
    end 
  end

  def new
    @hangout = Hangout.new
  end

  def create
    @hangout = Hangout.new(hangout_params)
    @user = current_user
    @hangout.host = @user

    if @hangout.save
      redirect_to user_path(@user)
    else
      flash.now[:errors] = @hangout.errors.full_messages.join(', ')
      render 'new'
    end
  end

  # def join
  #   @hangout = Hangout.find(params[:id])
  #   if request.post?
  #     @hangout.guest = current_user
  #     redirect_to user_path(current_user)
  #   else
  #     redirect_to hangouts_path
  #   end 

  # end


  def edit
    @hangout = Hangout.find(params[:id])
  end

  def update
      @hangout = Hangout.find(params[:hangout_id])
      @hangout.update(guest: current_user) 
     
      if @hangout.save
        redirect_to user_path(current_user)
      else

        render :show
      end
  end

  private
  def hangout_params
    params.require(:hangout).permit(:date, :time, :restaurant_id)
  end


end
