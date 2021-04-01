class Shift < ApplicationRecord
    validates :role_name, :presence => true
    validates :shift_start, :presence => true
    validates :shift_end , :presence => true
    validates :shift_pay, :presence => true
  
   validate :end_date_after_start_date?

   def end_date_after_start_date?
       if shift_end < shift_start
          errors.add :shift_end, "shift must be after shift start"
       end
    end
end
