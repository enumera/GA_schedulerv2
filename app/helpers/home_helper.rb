module HomeHelper
  

  def admin?     
      current_user && current_user.role.name == "admin"
  end


end
