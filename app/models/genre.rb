class Genre < ApplicationRecord
  has_many :movie_types, class_name: "MovieType", foreign_key: "genreId", dependent: :destroy
  has_many :movies, through: :movie_types

  validates :genresName, presence: true, uniqueness: true
  validates :genresDescription, presence: true
end
