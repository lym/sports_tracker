class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :match_date
      t.string :sport
      t.string :player_one
      t.string :player_two
      t.decimal :player_one_wins
      t.decimal :player_two_wins
      t.decimal :players_draw

      t.timestamps
    end
  end
end
