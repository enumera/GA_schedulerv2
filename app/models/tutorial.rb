class Tutorial < ActiveRecord::Base
  attr_accessible :cohort_id, :name, :status_id, :subject, :timerquired, :classroom_id
    belongs_to :cohort
    belongs_to :classroom
  has_and_belongs_to_many :profiles
  belongs_to :status
  
end
