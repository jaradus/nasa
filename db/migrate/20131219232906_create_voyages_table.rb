class CreateVoyagesTable < ActiveRecord::Migration
  def up
    create_table :voyages do |t|
      t.integer :planet_id
      t.integer :moon_id
      t.integer :astronaut_id

      t.timestamp
    end
  end

  def down
    drop_table :voyages
  end
end
