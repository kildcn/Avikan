class CreateBirds < ActiveRecord::Migration[7.1]
  def change
    create_table :birds do |t|
      t.string :common_name
      t.string :scientific_name
      t.text :description
      t.string :habitat
      t.string :conservation_status
      t.boolean :migrates
      t.integer :experience_points
      t.string :common_location
      t.string :bird_habitat_type
      t.string :bird_size
      t.string :diet
      t.integer :max_velocity
      t.string :rarity
      t.string :sound_url
      t.integer :weight
      t.string :photo

      t.timestamps
    end
  end
end
