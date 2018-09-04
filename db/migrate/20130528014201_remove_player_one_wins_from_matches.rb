class RemovePlayerOneWinsFromMatches < ActiveRecord::Migration[5.2]
  def up
    remove_column :matches, :player_one_wins
  end

  def down
    add_column :matches, :player_one_wins, :decimal
  end
end
