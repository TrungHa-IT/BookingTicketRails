class CreateBookingSeats < ActiveRecord::Migration[7.1]
  def change
    create_table :booking_seats do |t|
      t.integer :booking_id
      t.integer :seat_id
      t.integer :show_time_detail_id
      t.boolean :hold_still

      t.timestamps
    end
  end
end
