class CreateRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :rooms do |t|
      t.integer :cinema_id
      t.string :name
      t.integer :seat_capacity

      t.timestamps
    end
  end
end
