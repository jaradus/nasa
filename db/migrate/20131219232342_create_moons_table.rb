class CreateMoonsTable < ActiveRecord::Migration
  def up
    create_table :moons do |t|
      t.string  :name
      t.integer :planet_id

      t.timestamp
    end
  end

  def down
    drop_table :moons
  end
end
