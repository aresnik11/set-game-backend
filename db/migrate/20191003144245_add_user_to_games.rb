class AddUserToGames < ActiveRecord::Migration[6.0]
  def change
    add_reference :games, :user, foreign_key: true
  end
end
