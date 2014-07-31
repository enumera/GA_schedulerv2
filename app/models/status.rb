class Status < ActiveRecord::Base
  attr_accessible :statusname, :thing

  has_many :courses
  has_many :lessons

 validates :thing, presence: true, uniqueness: true
end
