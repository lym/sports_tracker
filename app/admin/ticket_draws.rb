ActiveAdmin.register TicketDraw do
  index do
    column :name
    column :email
    column :ticket_number
  end

  show do
    attributes_table do
      row :name
      row :email
      row :ticket_number
    end
  end
end
