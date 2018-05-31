class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages.join(', ')
      redirect_to signup_path
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      redirect_to user_path(@user)
    else
      render :new
    end

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def user_params
<<<<<<< HEAD
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
=======
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
>>>>>>> a7c660422c2522b4e3adf25895a1b8a76f3bb3ef
end
