class BikeTrail < ApplicationRecord
    has_many :counters, through: :BikeTrailsCounters
end
