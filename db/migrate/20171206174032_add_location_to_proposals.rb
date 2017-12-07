class AddLocationToProposals < ActiveRecord::Migration[5.1]
  def change
    add_column :proposals, :location, :string
  end
end
