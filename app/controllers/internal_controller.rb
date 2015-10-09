class InternalController < ApplicationController

  before_filter :check_session
  
  private
  def check_session
    redirect_to "/" if session[:user_id].nil?    
  end 
end
