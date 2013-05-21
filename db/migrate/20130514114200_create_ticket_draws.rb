class CreateTicketDraws < ActiveRecord::Migration
  def change
    create_table :ticket_draws do |t|
      t.string :name
      t.string :email
      t.decimal :ticket_number

      t.timestamps
    end
  end
end
