ActiveAdmin.register User do
  index do
    column :name
    column :email
    column :current_sign_in_ip
    default_actions
  end
end
