class Profile < ActiveRecord::Base
  attr_accessible  :name, :picture, :location_id, :role_id, :password, :email, :password_confirmation
  
  belongs_to :role
  has_and_belongs_to_many :cohorts
  has_and_belongs_to_many :tutorials
  belongs_to :location
  
  mount_uploader :picture, ProfileImageUploader
  
  has_secure_password
  
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

end
