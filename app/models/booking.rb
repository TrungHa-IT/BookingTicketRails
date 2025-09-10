class Booking < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "userId"
  belongs_to :show, class_name: "Show", foreign_key: "showId"

  has_one :payment, class_name: "Payment", foreign_key: "bookingId", dependent: :destroy
  has_many :booking_seats, class_name: "BookingSeat", foreign_key: "bookingId", dependent: :destroy

  validates :bookingTime, presence: true
  validates :totalAmount, numericality: { greater_than_or_equal_to: 0 }
end
