class ApplicationController < ActionController::Base
    include SessionsHelper

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    end
  end

  def logged_in?
    !!current_user
  end
end
