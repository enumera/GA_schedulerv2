class SessionsController < ApplicationController
  def new 

  end

  def create 
    profile = Profile.find_by_email(params[:email])
    if profile && profile.authenticate(params[:password])
     session[:profile_id] = profile.id
     redirect_to root_path, notice: "logged in!"
    else
     flash.now.alert = "invalid login credentials"
     render "new"
    end
  end
  
  def destroy
    session[:profile_id] = nil
    redirect_to root_url, notice: "logged out!"
  end
end

