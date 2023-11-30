class AddUserXpToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :user_xp, :integer
  end
end
