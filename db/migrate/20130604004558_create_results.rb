class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.integer :match_id
      t.string :score

      t.timestamps
    end
  end
end
