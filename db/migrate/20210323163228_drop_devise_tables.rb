class DropDeviseTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :models, if_exists: true
  end
end
