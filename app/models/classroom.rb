class Classroom < ActiveRecord::Base
  attr_accessible :chairs, :chillout, :location, :name, :projector, :tables

  has_many :tutorials
end
