class Seat < ApplicationRecord
  belongs_to :room, class_name: "Room", foreign_key: "roomId"
  has_many :booking_seats, class_name: "BookingSeat", foreign_key: "seatId", dependent: :destroy

  validates :seatNumber, presence: true
  validates :status, inclusion: { in: ["Available", "Booked"] }
end
