class Voyage < ActiveRecord::Base

  # has_many :moon
  # has_many :planet
  # belongs_to :astronaut

  belongs_to :planet
  belongs_to :moon
  belongs_to :astronaut

end