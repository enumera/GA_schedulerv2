class Course < ActiveRecord::Base
  attr_accessible :description, :name, :outcome, :status_id, :lesson_ids

has_and_belongs_to_many :lessons
belongs_to :status


 validates :name, presence: true, uniqueness: true

end
