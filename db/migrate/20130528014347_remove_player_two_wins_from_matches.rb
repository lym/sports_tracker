class RemovePlayerTwoWinsFromMatches < ActiveRecord::Migration[5.2]
  def up
    remove_column :matches, :player_two_wins
  end

  def down
    add_column :matches, :player_two_wins, :decimal
  end
end
