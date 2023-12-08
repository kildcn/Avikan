class AddPhotoUrlToBirds < ActiveRecord::Migration[7.1]
  def change
    add_column :birds, :photo_url, :string
  end
end
