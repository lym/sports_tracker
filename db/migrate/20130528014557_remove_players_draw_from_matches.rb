class RemovePlayersDrawFromMatches < ActiveRecord::Migration
  def up
    remove_column :matches, :players_draw
  end

  def down
    add_column :matches, :players_draw, :decimal
  end
end
