class UsersController < ApplicationController
 def new
    @user = User.new
    
  end

  def create 
    @user = User.new(params[:user])
    @user.role = "user"
    if @user.save
      redirect_to new_profile_path
    else
      render 'new'
    end
  end
end
