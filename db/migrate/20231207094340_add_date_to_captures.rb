class AddDateToCaptures < ActiveRecord::Migration[7.1]
  def change
    add_column :captures, :date, :datetime
  end
end
