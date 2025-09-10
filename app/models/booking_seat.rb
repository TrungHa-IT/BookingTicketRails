class BookingSeat < ApplicationRecord
  belongs_to :booking, class_name: "Booking", foreign_key: "bookingId"
  belongs_to :seat, class_name: "Seat", foreign_key: "seatId"
  belongs_to :show_time_detail, class_name: "ShowTimeDetail", foreign_key: "showTimeId"

  validates :holdStill, presence: true
end
