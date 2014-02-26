class AddExpiryDaysToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :expiry_days, :integer
  end
end
