class CreateBetOptions < ActiveRecord::Migration
  def change
    create_table :bet_options do |t|
      t.string :name
      t.integer :number_of_sub_options
      t.string :available_for

      t.timestamps
    end
  end
end
