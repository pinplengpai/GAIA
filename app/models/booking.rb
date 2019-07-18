class Booking < ApplicationRecord
  STATUS = %w[Pending Confirmed Declined Cancelled]
  belongs_to :user
  belongs_to :garden
  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date
  validates :user_id, presence: true
  validates :garden_id, presence: true
  validates :status, inclusion: { in: STATUS }

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date") if end_date < start_date
    end
  end
end
