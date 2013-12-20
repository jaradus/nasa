class CreatePlanetsTable < ActiveRecord::Migration
  def up
    create_table :planets do |t|
      t.string  :name

      t.timestamp
    end
  end

  def down
    drop_table :planets
  end
end
