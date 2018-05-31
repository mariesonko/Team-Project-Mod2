class HangoutsController < ApplicationController

  def index
    @hangouts = Hangout.all
    # if logged_in?
    # @hangouts = current_user.hangouts
    # else
    # @hangouts = Hangout.where(user_id: nil)
  # end
end

  def new
    @hangout = Hangout.new
  end

  def create
    @hangout= Hangout.create(hangout_params)
    @user = User.find_or_create_by(name: params[:user][:name])
    @hangout.host = @user
    @hangout.guest = @user

    if @hangout.valid?
      redirect_to @user
    else
      flash[:errors] = @hangout.errors.full_messages.join(', ')
      render "new"
    end
  end

  def show
    @hangout = Hangout.find(params[:id])
  end

  def edit
    @hangout = Hangout.find(params[:id])
  end

  def update
      # @hangout = Hangout.find(params[:id])
      # redirect_to user_path(session[:current_user_id])
  end

  def destroy
    @hangout = Article.find(params[:id])
  @hangout.destroy
  redirect_to hangouts_path, notice: "Delete success"
  end

  private

  def hangout_params
  params.require(:hangout).permit(:date, :time, :restaurant_id)
  end


end
