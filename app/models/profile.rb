class Profile < ActiveRecord::Base
  attr_accessible :assignedlocation, :name, :picture, :primarylocation, :role_id, :password, :password_confirmation, :email
  belongs_to :role
  has_and_belongs_to_many :cohorts
  has_and_belongs_to_many :tutorials
  

  mount_uploader :picture, ProfileImageUploader
  
  has_secure_password
  
  validates :email, presence: true, uniqueness: true




    def role?(role)
      self.role.to_s == role.to_s
    end

end
