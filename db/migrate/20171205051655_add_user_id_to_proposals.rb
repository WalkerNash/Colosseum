class AddUserIdToProposals < ActiveRecord::Migration[5.1]
  def change
    add_column :proposals, :user_id, :integer
    add_column :proposals, :index, :string
  end
end
