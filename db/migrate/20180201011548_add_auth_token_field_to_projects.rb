class AddAuthTokenFieldToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :auth_token, :string
  end
end
