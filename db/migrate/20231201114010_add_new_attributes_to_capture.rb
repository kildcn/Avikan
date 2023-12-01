class AddNewAttributesToCapture < ActiveRecord::Migration[7.1]
  def change
    add_column :captures, :title, :string
    add_column :captures, :description, :text
    add_column :captures, :image_url, :string
  end
end
