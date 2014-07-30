class User < ActiveRecord::Base
   has_secure_password
  
  validates :email, presence: true, uniqueness: true
  attr_accessible :email, :password, :password_confirmation, :role
  belongs_to :profile


  def role?(role_to_test)
    self.role.to_s == role_to_test.to_s
  end
end
