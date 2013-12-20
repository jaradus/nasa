class Astronaut < ActiveRecord::Base

  has_many :planets
  has_many :moons
  has_many :voyages

end