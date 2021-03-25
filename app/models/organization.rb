class Organization < ApplicationRecord
    validates :org_name, :presence => true
    validates :org_address, :presence => true
    validates :org_city, :presence => true
    validates :org_state, :presence => true
end
