class AddSpaceIdToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :space_id, :integer
  end
end
