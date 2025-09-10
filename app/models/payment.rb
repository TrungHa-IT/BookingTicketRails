class Payment < ApplicationRecord
  belongs_to :booking, class_name: "Booking", foreign_key: "bookingId"

  validates :paymentMethod, presence: true
  validates :status, inclusion: { in: ["Success", "Pending", "Failed"] }
end
