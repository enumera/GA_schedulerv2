module ApplicationHelper

  def admin?
      current_user && current_user.role.name == "admin"
    end

    def producer?
      current_user && current_user.role.name == "producer"
    end

end
