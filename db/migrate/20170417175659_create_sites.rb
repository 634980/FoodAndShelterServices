class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.string :site_name
      t.string :site_address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.integer :site_contact_number

      t.timestamps
    end
  end
end
