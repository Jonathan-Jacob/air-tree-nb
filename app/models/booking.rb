class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :treehouse
  validates :start_date, presence: true
  validates :end_date, presence: true
end
