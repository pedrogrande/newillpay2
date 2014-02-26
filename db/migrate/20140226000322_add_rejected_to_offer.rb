class AddRejectedToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :rejected, :datetime
  end
end
