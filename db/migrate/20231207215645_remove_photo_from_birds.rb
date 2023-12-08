class RemovePhotoFromBirds < ActiveRecord::Migration[7.1]
  def change
    remove_column :birds, :photo, :string
  end
end
