class CreateSubOrganizations < ActiveRecord::Migration
  def change
    create_table :sub_organizations do |t|
      t.integer :organization_id
      t.string  :domain_name
      t.timestamps null: false
    end
  end
end
