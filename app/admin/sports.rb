ActiveAdmin.register Sport do
  index do
    column :name
    column :description
    column :icon_file_name
    default_actions
  end

  show do
    attributes_table do
      row :name
      row :description
      row :icon do
        image_tag(sport.icon.url)
      end
    end
  end

  form :html => { :enctype => 'multipart/form-data' } do |f|
    f.inputs "Sport information", :multipart => true do
      f.input :name
      f.input :description
      f.input :icon
    end
    f.buttons
  end
end
