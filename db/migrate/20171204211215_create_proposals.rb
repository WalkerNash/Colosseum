class CreateProposals < ActiveRecord::Migration[5.1]
  def change
    create_table :proposals do |t|
      t.string :name
      t.string :short_desc

      t.timestamps
    end
  end
end
