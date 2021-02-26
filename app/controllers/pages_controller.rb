class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @treehouses = Treehouse.where(user_id: current_user.id)
    @bookings_guest = Booking.where(user_id: current_user.id)
  end
end


# Show the bookings where the owner of the treehouse associated with is current user