class RemovePlayerOneWinsFromMatches < ActiveRecord::Migration
  def up
    remove_column :matches, :player_one_wins
  end

  def down
    add_column :matches, :player_one_wins, :decimal
  end
end
