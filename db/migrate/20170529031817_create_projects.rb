class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :abstract
      t.string :authors
      t.string :date
      t.references :subject, foreign_key: true
      t.integer :revision_state, default: 0

      t.timestamps
    end
  end
end
