class CreateSeatShowTimeDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :seat_show_time_details do |t|
      t.integer :show_time_detail_id
      t.integer :seat_id
      t.string :status

      t.timestamps
    end
  end
end
