class Cohort < ActiveRecord::Base
  attr_accessible :course_id, :end_date, :location_id, :name, :start_date, :status_id, :profile_ids
  belongs_to :course
  has_many :tutorials
  has_and_belongs_to_many :profiles
  belongs_to :status
  belongs_to :location

end
