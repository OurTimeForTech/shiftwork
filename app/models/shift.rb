class Shift < ApplicationRecord
  validates :role_name, :presence => true
  validates :shift_start, :presence => true
  validates :shift_end , :presence => true
  validates :shift_pay, :presence => true
  validates_numericality_of :shift_pay, greater_than: 0.00
  
  validate :end_date_after_start_date?
  validate :shift_start_before_current_date?

  def end_date_after_start_date?
    if shift_end < shift_start + 3600
      errors.add :shift_end, "shift must end at least an hour after shift start"
    end
  end

  def shift_start_before_current_date?
    if shift_start < Time.zone.now - 100
      errors.add :shift_start, "shift cannot start in the past" 
    elsif shift_start < Time.zone.now + 3600
      errors.add :shift_start, "shift must be created at least an hour before start" 
    end
  end
end
