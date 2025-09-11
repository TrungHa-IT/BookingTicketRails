class CreateShowTimeDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :show_time_details do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :show_id

      t.timestamps
    end
  end
end
