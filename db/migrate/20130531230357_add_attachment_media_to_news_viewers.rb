class AddAttachmentMediaToNewsViewers < ActiveRecord::Migration
  def self.up
    change_table :news_viewers do |t|
      t.attachment :media
    end
  end

  def self.down
    drop_attached_file :news_viewers, :media
  end
end
