class CreateAstronautsTable < ActiveRecord::Migration
  def up
    create_table :astronauts do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :rank
      t.string :specialty

      t.timestamp
    end
  end

  def down
    drop_table :astronauts
  end
end
