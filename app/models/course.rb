class Course < ActiveRecord::Base
  attr_accessible :description, :name, :outcome, :status_id

has_and_belongs_to_many :lessons
end
