class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :qualifications
      t.string :category
      t.string :location

      t.timestamps
    end
  end
end
