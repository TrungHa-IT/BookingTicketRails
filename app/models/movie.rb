class Movie < ApplicationRecord
  has_many :movie_types, class_name: "MovieType", foreign_key: "movieId", dependent: :destroy
  has_many :genres, through: :movie_types
  has_many :shows, class_name: "Show", foreign_key: "movieId", dependent: :destroy

  validates :title, presence: true, uniqueness: true
  validates :durationMinutes, numericality: { greater_than: 0 }
  validates :status, inclusion: { in: ["Now Showing", "Coming Soon"] }
  validates :limitAge, numericality: { greater_than_or_equal_to: 0 }
  validates :screeningDay, presence: true
end
