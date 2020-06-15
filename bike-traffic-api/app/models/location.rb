class Location < ApplicationRecord
    belongs_to :counter
    # This could be polymorphic
    #belongs_to :location_info, polymorphic: true
    #counter
    #has_one :location, as: :location_info
    

    def address(street, city, state)
        [street, city, state].compact.join(', ')
    end
end
