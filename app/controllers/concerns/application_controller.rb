class ApplicationController < ActionController::Base
    helper_method :current_user
  
    # Define a method to find the current user based on the session or token.
    def current_user
      # Check if a user is logged in based on session or token.
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end
  end
  