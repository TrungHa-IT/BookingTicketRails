class Payment < ApplicationRecord
  self.table_name = "Payments"

  belongs_to :booking, class_name: "Booking", foreign_key: "bookingId"
end
