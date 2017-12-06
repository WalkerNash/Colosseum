class AddFullDescToProposals < ActiveRecord::Migration[5.1]
  def change
    add_column :proposals, :fulldesc, :string
  end
end
