class AddAttachmentIconToSports < ActiveRecord::Migration[5.2]
  def self.up
    change_table :sports do |t|
      t.attachment :icon
    end
  end

  def self.down
    drop_attached_file :sports, :icon
  end
end
