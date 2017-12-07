class AddCategoryToProposals < ActiveRecord::Migration[5.1]
  def change
    add_column :proposals, :category, :string
  end
end
