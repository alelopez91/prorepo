class CreateSpecialties < ActiveRecord::Migration[5.0]
  def change
    create_table :specialties do |t|
      t.string :name
      t.integer :grade_level

      t.timestamps
    end
  end
end
