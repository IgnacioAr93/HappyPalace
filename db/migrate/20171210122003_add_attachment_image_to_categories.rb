class AddAttachmentImageToCategories < ActiveRecord::Migration[4.2]
  def self.up
    change_table :categories do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :categories, :image
  end
end