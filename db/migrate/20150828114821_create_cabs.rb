class CreateCabs < ActiveRecord::Migration
  def change
    create_table :cabs do |t|
      t.string :name
      t.string :registration_no
      t.integer :total_capacity
      t.integer :user_id
      t.integer :route_id
      t.timestamps null: false
    end
  end
end
