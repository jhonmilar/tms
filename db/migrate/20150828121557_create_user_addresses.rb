class CreateUserAddresses < ActiveRecord::Migration
  def change
    create_table :user_addresses do |t|
      t.integer :user_id
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :city
      t.string :state
      t.string :country
      t.string :postalCode
      t.string :pickup_address
      t.float  :pickup_lat
      t.float  :pickup_long
      t.timestamps null: false
    end
  end
end