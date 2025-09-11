class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :email
      t.string :phone
      t.string :password_hash
      t.integer :role

      t.timestamps
    end
  end
end
