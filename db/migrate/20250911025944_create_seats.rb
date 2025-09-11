class CreateSeats < ActiveRecord::Migration[7.1]
  def change
    create_table :seats do |t|
      t.integer :room_id
      t.integer :seat_number
      t.string :seat_row

      t.timestamps
    end
  end
end
