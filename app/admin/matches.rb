ActiveAdmin.register Match do
  index do
    column :match_date
    column :player_one
    column :player_two
    column :sport
    column :tournament
    default_actions
  end

  show do
    attributes_table do
      row :match_date
      row :sport
      row :player_one
      row :player_two
      row :tournament
    end
  end
end
