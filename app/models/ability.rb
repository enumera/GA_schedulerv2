class Ability
  include CanCan::Ability
     
  def initialize(user)
    profile ||= profile.new
    if profile.role? :admin
      can :manage, :all
   
      
    end
  end
end
  
  