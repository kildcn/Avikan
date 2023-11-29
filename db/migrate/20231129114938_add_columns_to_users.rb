class AddColumnsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :username, :string
    add_column :users, :date_joined, :date
    add_column :users, :avatar_url, :string
  end
end
