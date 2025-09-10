class Booking < ApplicationRecord
  self.table_name = "Bookings"

  belongs_to :user, class_name: "User", foreign_key: "userId"
  belongs_to :show, class_name: "Show", foreign_key: "showId"

  has_one :payment, class_name: "Payment", foreign_key: "bookingId"
  has_many :booking_seats, class_name: "BookingSeat", foreign_key: "bookingId"
end
