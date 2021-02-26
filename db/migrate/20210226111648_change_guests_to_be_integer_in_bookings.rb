class ChangeGuestsToBeIntegerInBookings < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :guests, 'integer USING CAST("guests" AS integer)'
  end
end
