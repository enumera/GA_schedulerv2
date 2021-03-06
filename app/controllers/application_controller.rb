class ApplicationController < ActionController::Base
  # helper_method :admin?

   helper_method :current_user
  def current_user
    @current_user ||= Profile.find(session[:profile_id]) if session[:profile_id]
  end
  def logged_in?
    !!current_user
  end
  private
  def authenticate
    unless logged_in?
      flash[:error] = "You must be logged in to access this section of the site"
      redirect_to login_url
    end
  end
    helper_method :current_user
  
  rescue_from CanCan::AccessDenied do |exception|
     redirect_to root_url , alert: "You can't access this page"
    end

    # def admin?
    #   current_user && current_user.role == "admin"
    # end


    def current_ability
        @current_ability or @current_ability = Ability.new(current_user
          )
    end

end

