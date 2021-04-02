class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :org_name, null: false, default: ""
      t.string :org_address, default: ""
      t.string :org_city, null: false, default: ""
      t.string :org_state, null: false, default: ""

      t.timestamps
    end
  end
end
