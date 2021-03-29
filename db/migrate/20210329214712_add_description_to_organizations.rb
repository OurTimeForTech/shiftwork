class AddDescriptionToOrganizations < ActiveRecord::Migration[6.0]
  def change
    add_column :organizations, :org_description, :string
  end
end
