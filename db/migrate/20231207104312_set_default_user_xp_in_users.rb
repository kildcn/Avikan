class SetDefaultUserXpInUsers < ActiveRecord::Migration[7.1]
  def change
    change_column_default :users, :user_xp, from: nil, to: 0
  end
end
