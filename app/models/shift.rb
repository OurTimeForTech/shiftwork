class Shift < ApplicationRecord
  validates :role_name, :presence => true
  validates :shift_start, :presence => true
  validates :shift_end , :presence => true
  validates :shift_pay, :presence => true
  validates_numericality_of :shift_pay, greater_than_or_equal_to: 0.00
  
  validate :end_date_after_start_date?

  def end_date_after_start_date?
    if shift_end < shift_start
      errors.add :shift_end, "shift must end after shift start"
    end
  end
end
