class Profile < ActiveRecord::Base
  attr_accessible :assignedlocation, :name, :picture, :primarylocation, :role
    belongs_to :role
  has_and_belongs_to_many :cohorts
  has_and_belongs_to_many :tutorials
  
    def role?(role)
      self.role.to_s == role.to_s
    end

end
