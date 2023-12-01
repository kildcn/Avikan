class CreateSpots < ActiveRecord::Migration[7.1]
  def change
    create_table :spots do |t|
      t.references :bird, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :likes
      t.integer :dislikes

      t.timestamps
    end
  end
end
