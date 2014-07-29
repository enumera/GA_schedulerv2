class Profile < ActiveRecord::Base
  attr_accessible :assignedlocation, :name, :picture, :primarylocation, :role_id
    belongs_to :role
  has_and_belongs_to_many :cohorts
  has_and_belongs_to_many :tutorials

  mount_uploader :picture, ProfileImageUploader
  
    def role?(role)
      self.role.to_s == role.to_s
    end

end
