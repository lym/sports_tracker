ActiveAdmin.register Job do
  index do
    column :title
    column :description
    column :qualifications
    column :category
    column :location
    default_actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :qualifications
      row :category
      row :location
    end
  end
end
