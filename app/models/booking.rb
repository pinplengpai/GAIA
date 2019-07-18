class Booking < ApplicationRecord
  STATUS = %w(Pending Confirmed Declined Cancelled)
  belongs_to :user
  belongs_to :garden
  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date?
  validates :user_id, presence: true
  validates :garden_id, presence: true
  validates :status, inclusion: { in: STATUS }


  def end_date_after_start_date?
    errors.add :end_date, "must be after start date" if end_date < start_date
  end
end
