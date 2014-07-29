class Tutorial < ActiveRecord::Base
  attr_accessible :cohort_id, :name, :status_id, :subject, :timerquired
    belongs_to :cohort
  has_and_belongs_to_many :profiles
end
