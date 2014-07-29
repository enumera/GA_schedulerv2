class Lesson < ActiveRecord::Base
  attr_accessible :name, :status_id, :subject, :timerequired
  has_and_belongs_to_many :courses
end
