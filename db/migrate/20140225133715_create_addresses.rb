class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :suburb
      t.string :postcode
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
