class Genre < ApplicationRecord
  self.table_name = "Genres"

  has_many :movie_types, class_name: "MovieType", foreign_key: "genredId"
  has_many :movies, through: :movie_types
end
