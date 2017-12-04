class AddAttachmentAvatarToProposals < ActiveRecord::Migration[4.2]
  def self.up
    change_table :proposals do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :proposals, :avatar
  end
end
