class Role < ActiveRecord::Base
  attr_accessible :name
   has_many :profiles

  validates :name, presence: true, uniqueness: true
end
