class User < ApplicationRecord
  self.table_name = "Users"

  has_many :bookings, class_name: "Booking", foreign_key: "userId"
end
