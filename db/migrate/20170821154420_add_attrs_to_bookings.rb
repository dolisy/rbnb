class AddAttrsToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :pick_up_date, :datetime
    add_column :bookings, :return_date, :datetime
  end
end
