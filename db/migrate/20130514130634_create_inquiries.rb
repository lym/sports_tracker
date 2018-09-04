class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.string :name
      t.string :email
      t.string :message
      t.string :inquiry_type
      t.integer :priority
      t.string :phone_number

      t.timestamps
    end
  end
end
