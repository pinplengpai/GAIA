class AddDefaultValueToStatusInBookings < ActiveRecord::Migration[5.2]
  def change
    change_column_default :bookings, :status, from: nil, to: 'Pending'
  end
end
