class CreateShows < ActiveRecord::Migration[7.1]
  def change
    create_table :shows do |t|
      t.integer :movie_id
      t.integer :room_id
      t.integer :cinema_id
      t.integer :ticket_price
      t.date :show_day

      t.timestamps
    end
  end
end
