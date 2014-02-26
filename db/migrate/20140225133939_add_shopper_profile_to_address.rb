class AddShopperProfileToAddress < ActiveRecord::Migration
  def change
    add_reference :addresses, :shopper_profile, index: true
  end
end
