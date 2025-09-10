class Movie < ApplicationRecord
  self.table_name = "Movies"

  has_many :movie_types, class_name: "MovieType", foreign_key: "movieId"
  has_many :genres, through: :movie_types

  has_many :shows, class_name: "Show", foreign_key: "movieId"
  has_many :bookings, through: :shows
end
q