class ShowTimeDetail < ApplicationRecord
  belongs_to :show, class_name: "Show", foreign_key: "showId"
  has_many :booking_seats, class_name: "BookingSeat", foreign_key: "showTimeId", dependent: :destroy

  validates :startTime, presence: true
  validates :endTime, presence: true
end
