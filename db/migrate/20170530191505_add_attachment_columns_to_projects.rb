class AddAttachmentColumnsToProjects < ActiveRecord::Migration[5.0]
  def up
    add_attachment :projects, :attachment
  end

  def down
    remove_attachment :projects, :attachment
  end
end
