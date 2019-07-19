class User < ApplicationRecord
  has_many :gardens
  mount_uploader :picture, PhotoUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :owned_gardens, foreign_key: 'user_id', class_name: 'Garden', dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :booked_gardens, through: :bookings, source: :garden, dependent: :destroy
  has_many :owned_bookings, through: :booked_gardens, source: :bookings, dependent: :destroy
end
