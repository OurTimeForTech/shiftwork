class AddConstraintsToShifts < ActiveRecord::Migration[6.0]
  def change
    change_column_null :shifts, :role_name, false
    change_column_null :shifts, :shift_pay, false
    change_column_null :shifts, :shift_start, false
    change_column_null :shifts, :shift_end , false
  end
end
