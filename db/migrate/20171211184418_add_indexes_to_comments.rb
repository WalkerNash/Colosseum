class AddIndexesToComments < ActiveRecord::Migration[5.1]
  def change
    add_index :comments, :user_id
    add_index :comments, :submission_id
  end
end
