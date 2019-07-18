class Garden < ApplicationRecord
  mount_uploader :picture, PhotoUploader
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :picture, presence: true
  validates :name, uniqueness: true, presence: true
  validates :address, uniqueness: true, presence: true
  validates :description, uniqueness: true, presence: true
  validates :size, presence: true
  validates :price, presence: true
  validates :number_of_guests, presence: true
  validates :user_id, presence: true


  def amount_of_bookings
    bookings.count
  end

  def amount_of_days
    bookings.reduce(0) { |days, booking| days += (booking.end_date - booking.start_date).to_i }

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
  end
end
