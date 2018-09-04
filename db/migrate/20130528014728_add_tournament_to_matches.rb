class AddTournamentToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :tournament, :string
  end
end
