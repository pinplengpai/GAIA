class Garden < ApplicationRecord
  mount_uploader :picture, PhotoUploader
  belongs_to :user
  has_many :bookings
  validates :picture, presence: true
  validates :name, uniqueness: true, presence: true
  validates :address, uniqueness: true, presence: true
  validates :description, uniqueness: true, presence: true
  validates :size, presence: true
  validates :price, presence: true
  validates :number_of_guests, presence: true
  validates :user_id, presence: true

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
