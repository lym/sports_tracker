ActiveAdmin.register Match do
  index do
    column :match_date
    column :player_one
    column :player_two
    column :player_one_wins
    column :players_draw
    column :player_two_wins
    column :sport
    default_actions
  end

  show do
    attributes_table do
      row :match_date
      row :sport
      row :player_one
      row :player_two
      row :player_one_wins
      row :players_draw
      row :player_two_wins
    end
  end
end
