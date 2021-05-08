class WorkOrder < ApplicationRecord
    has_many :workers

    validates_length_of :workers, maximum: 4
end
