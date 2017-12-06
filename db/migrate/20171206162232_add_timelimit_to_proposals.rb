class AddTimelimitToProposals < ActiveRecord::Migration[5.1]
  def change
    add_column :proposals, :timelimit, :integer
  end
end
