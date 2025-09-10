class ShowTimeDetail < ApplicationRecord
  self.table_name = "ShowTimeDetails"

  belongs_to :show, class_name: "Show", foreign_key: "showId"
  has_many :booking_seats, class_name: "BookingSeat", foreign_key: "showTimeId"
end
