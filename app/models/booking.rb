class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :garden
  validates :start_date, :end_date, presence: true, availability: true
  validate :end_date_after_start_date
  validates :user_id, presence: true
  validates :garden_id, presence: true
end
