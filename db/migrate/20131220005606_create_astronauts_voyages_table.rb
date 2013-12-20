class CreateAstronautsVoyagesTable < ActiveRecord::Migration
  def up
    create_table :astronauts_voyages do |t|
    t.integer :astronaut_id, :voyage_id
  end
  end

  def down
    drop_table :astronauts_voyages
  end
end
