ActiveAdmin.register Inquiry do
  index do
    column :inquiry_type
    column :message
    column :phone_number
    column :email
    column :priority
    default_actions
  end

  show do
    attributes_table do
      row :inquiry_type
      row :message
      row :phone_number
      row :email
      row :priority
    end
  end
end
