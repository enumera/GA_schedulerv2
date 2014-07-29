class Cohort < ActiveRecord::Base
  attr_accessible :course_id, :end_date, :location, :name, :start_date, :status_id
   belongs_to :course
  has_many :tutorials
  has_and_belongs_to_many :profiles

end
