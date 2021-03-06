class Ability
  include CanCan::Ability
     
  def initialize(user)

    user ||= Profile.new
    case user.role.name
    
      when "admin"
           can :manage, :all
      when "producer"
        can :manage, Cohort
        can [:update, :edit, :index], Profile
        can [:index, :show], Course
       when "instructor"
        can [:edit, :update], Profile
        can :manage, Cohort
       when "student"
        can [:edit, :update], Profile
        can [:index, :show, :enroll], Cohort
        when "teaching assistant"
        can [:edit, :update], Profile
        can :manage, Cohort
      end
    end
  end

#     if user.role.name == "admin"
#       can :manage, :all
#     end

#     if user.role.name == "producer"
#       can :edit, :new, :destory, Cohorts
#     end
#   end
# end
  
  