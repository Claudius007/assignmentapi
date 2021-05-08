class Worker < ApplicationRecord
  belongs_to :work_order, optional: true 

  validates_associated :work_order
end
