class Room < ApplicationRecord
  belongs_to :cinema, class_name: "Cinema", foreign_key: "cinemaId"
  has_many :seats, class_name: "Seat", foreign_key: "roomId", dependent: :destroy
  has_many :shows, class_name: "Show", foreign_key: "roomId", dependent: :destroy

  validates :name, presence: true
  validates :seatCapacity, numericality: { greater_than: 0 }
end
