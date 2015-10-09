class SessionsController < ApplicationController
  def destroy 
    session[:user_id] = nil
    redirect_to '/'
  end
  
  def create
    @user = User.find_from_auth_hash(auth_hash)
    if @user.nil? then
      Rails.logger.info auth_hash if auth_hash.info
      
      redirect_to '/#userNotFound'
      session["email"] = auth_hash.info["email"] if auth_hash.info
      return
    end 
    session[:user_id] = @user.id
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
