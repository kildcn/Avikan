class RenamePhotoUrlToPhotoInBirds < ActiveRecord::Migration[7.1]
  def change
    rename_column :birds, :photo_url, :photo
  end
end
