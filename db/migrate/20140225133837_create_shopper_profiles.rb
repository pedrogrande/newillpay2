class CreateShopperProfiles < ActiveRecord::Migration
  def change
    create_table :shopper_profiles do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
