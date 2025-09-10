class MovieType < ApplicationRecord
  belongs_to :movie, class_name: "Movie", foreign_key: "movieId"
  belongs_to :genre, class_name: "Genre", foreign_key: "genreId"

  validates :movieId, presence: true
  validates :genreId, presence: true
end
