class Cinema < ApplicationRecord
  has_many :rooms, class_name: "Room", foreign_key: "cinemaId", dependent: :destroy
  has_many :shows, class_name: "Show", foreign_key: "cinemaId", dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
end
