class CreateNewsViewers < ActiveRecord::Migration[5.2]
  def change
    create_table :news_viewers do |t|
      t.string :title
      t.string :body
      t.string :excerpt
      t.string :author

      t.timestamps
    end
  end
end
