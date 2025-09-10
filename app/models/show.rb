class Show < ApplicationRecord
  self.table_name = "Shows"

  belongs_to :movie, class_name: "Movie", foreign_key: "movieId"
  belongs_to :room, class_name: "Room", foreign_key: "roomId"
  belongs_to :cinema, class_name: "Cinema", foreign_key: "cinemaId"

  has_many :show_time_details, class_name: "ShowTimeDetail", foreign_key: "showId"
  has_many :bookings, class_name: "Booking", foreign_key: "showId"
end
