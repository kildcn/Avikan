class CreateCaptures < ActiveRecord::Migration[7.1]
  def change
    create_table :captures do |t|
      t.integer :bird_id
      t.integer :user_id

      t.timestamps
    end
  end
end
