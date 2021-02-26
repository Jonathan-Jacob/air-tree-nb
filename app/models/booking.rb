class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :treehouse
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :guests, presence: true

  validate :end_date_after_start_date?
  validate :guests_match_capacity?

  def end_date_after_start_date?
    if end_date < start_date
      errors.add :end_date, "must be after start date"
    end
  end

  def guests_match_capacity?
    if guests > treehouse.capacity
      errors.add :guests, "max. #{treehouse.capacity}"
    end
  end
end
