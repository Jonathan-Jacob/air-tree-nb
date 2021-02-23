class Treehouse < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true, numericality: { only_integer: true }
  validates :cancel_days, presence: true, numericality: { only_integer: true }
  validates :photo, presence: { message: 'An image must be attached' }
end
