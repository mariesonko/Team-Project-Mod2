class UsersController < ApplicationController
  def new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    
  end

  def edit

  end

  def update

  end

  def destroy

  end
end