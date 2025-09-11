class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :show_id
      t.datetime :booking_time
      t.integer :total_amount

      t.timestamps
    end
  end
end
