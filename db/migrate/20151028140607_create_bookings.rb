class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :post_id
      t.integer :client_id
      t.integer :status
      t.integer :no_of_rooms
      
      t.timestamps null: false
    end
  end
end
