class AddAttachmentAvatarToSubmissions < ActiveRecord::Migration[4.2]
  def self.up
    change_table :submissions do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :submissions, :avatar
  end
end
