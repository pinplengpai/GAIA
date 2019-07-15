class Garden < ApplicationRecord
  belongs_to :user
  validates :image_url, presence: true
  validates :name, uniqueness: true, presence: true
  validates :address, uniqueness: true, presence: true
  validates :description, uniqueness: true, presence: true
  validates :size, presence: true
  validates :price, presence: true
  validates :number_of_guests, presence: true
  validates :user_id, uniqueness: true, presence: true
end
