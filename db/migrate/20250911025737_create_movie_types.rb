class CreateMovieTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :movie_types do |t|
      t.integer :movie_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
