class CreateRetailerProfiles < ActiveRecord::Migration
  def change
    create_table :retailer_profiles do |t|
      t.references :user, index: true
      t.string :business_name, null: false
      t.string :website, null: false
      t.string :phone
      t.string :address1
      t.string :address2
      t.string :suburb
      t.string :postcode
      t.string :country
      t.string :paypal_username

      t.timestamps
    end
  end
end
