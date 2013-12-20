class AddImageUrlColumnToAstronauts < ActiveRecord::Migration
  def up
    add_column :astronauts, :image_url, :string
  end

  def down
    remove_column :astronauts, :image_url, :string
  end
end
