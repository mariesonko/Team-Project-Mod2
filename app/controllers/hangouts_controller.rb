class HangoutsController < ApplicationController

  def index
    @hangouts = Hangout.all

    # @hangouts = Hangout.search(params[:search])
    #   if params[:search]
    #       @hangouts = Hangout.search(params[:search])
    #     else
    #       @hangouts = Hangout.all
    #   end

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
