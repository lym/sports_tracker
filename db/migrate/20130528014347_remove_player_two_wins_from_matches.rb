class RemovePlayerTwoWinsFromMatches < ActiveRecord::Migration
  def up
    remove_column :matches, :player_two_wins
  end

  def down
    add_column :matches, :player_two_wins, :decimal
  end
end
