class AddDeniedReasonToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :reason, :text, default: "Pendiente"
  end
end
