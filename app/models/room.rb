class Room < ApplicationRecord
  self.table_name = "Rooms"

  belongs_to :cinema, class_name: "Cinema", foreign_key: "cinemaId"

  has_many :seats, class_name: "Seat", foreign_key: "roomId"
  has_many :shows, class_name: "Show", foreign_key: "roomId"
end
