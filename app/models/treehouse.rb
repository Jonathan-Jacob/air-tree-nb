class Treehouse < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  before_validation :geocode, if: :address_changed?
  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true, numericality: { only_integer: true }
  validates :cancel_days, presence: true, numericality: { only_integer: true }
  validates :photo, presence: { message: 'An image must be attached' }
  validates :address, presence: { message: 'Address can\'t be blank' }
  validates :latitude, presence: { message: 'Invalid address' }
  geocoded_by :address
end
