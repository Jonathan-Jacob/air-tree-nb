class AddGuestsToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :guests, :integer
  end
end
