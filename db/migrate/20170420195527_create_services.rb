class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :service_type
      t.integer :site_id
      t.integer :employee_id
      t.integer :client_id
      t.datetime :date

      t.timestamps
    end
  end
end
