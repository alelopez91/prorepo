class AddEmailFieldToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :email, :string
  end
end
