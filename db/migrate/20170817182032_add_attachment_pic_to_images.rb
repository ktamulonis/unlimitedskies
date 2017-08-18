class AddAttachmentPicToImages < ActiveRecord::Migration[5.1]
  def self.up
    change_table :images do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :images, :pic
  end
end
