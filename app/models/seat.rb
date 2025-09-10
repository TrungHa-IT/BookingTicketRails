class Seat < ApplicationRecord
  self.table_name = "Seats"

  belongs_to :room, class_name: "Room", foreign_key: "roomId"
  has_many :booking_seats, class_name: "BookingSeat", foreign_key: "seatId"
end
