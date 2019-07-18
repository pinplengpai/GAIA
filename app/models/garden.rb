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

  def end_date_after_start_date?
    errors.add :end_date, "must be after start date" if booking.end_date < booking.start_date
  end

  def amount_of_bookings
    bookings.count
  end

  def amount_of_days
    bookings.reduce(0) { |days, booking| days += (booking.end_date - booking.start_date).to_i }
  end
end
