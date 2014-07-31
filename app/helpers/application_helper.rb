module ApplicationHelper

  def admin?     
      current_user && current_user.role.name == "admin"
    end

    def producer?
      current_user && current_user.role.name == "producer"
    end
    def student?
      current_user && current_user.role.name == "student"
    end
    def instructor?
        current_user && current_user.role.name == "instructor"
      end
      



end
