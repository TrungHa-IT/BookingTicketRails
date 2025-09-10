class MovieType < ApplicationRecord
  self.table_name = "MovieTypes"   # nếu giữ nguyên DB
  belongs_to :movie, class_name: "Movie", foreign_key: "movieId"
  belongs_to :genre, class_name: "Genre", foreign_key: "genredId"
end
