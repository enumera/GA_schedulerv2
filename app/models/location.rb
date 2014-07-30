class Location < ActiveRecord::Base
  attr_accessible :name
  has_many :profiles
  has_many :classrooms
  has_many :tutorials
  has_many :cohorts
  

end
