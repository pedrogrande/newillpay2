class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.references :shopper_profile, index: true
      t.references :retailer_profile, index: true
      t.string :product_name
      t.string :url
      t.text :description
      t.integer :price
      t.integer :offer
      t.datetime :expiry
      t.integer :fee
      t.datetime :accepted
      t.datetime :paid
      t.datetime :sent

      t.timestamps
    end
  end
end
