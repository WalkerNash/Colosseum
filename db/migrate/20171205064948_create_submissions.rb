class CreateSubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :submissions do |t|
      t.integer :proposal_id
      t.string :title
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :submissions, :proposal_id
  end
end
