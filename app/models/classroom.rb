class Classroom < ActiveRecord::Base
  attr_accessible :chairs, :chillout, :location_id, :name, :projector, :tables
  belongs_to :location
  has_many :tutorials
end
