class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.integer :booking_id
      t.string :payment_method
      t.integer :amount
      t.datetime :payment_date
      t.string :status

      t.timestamps
    end
  end
end
