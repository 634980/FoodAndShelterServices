class CreateService1s < ActiveRecord::Migration[5.0]
  def change
    create_table :service1s do |t|
      t.string :service_type
      t.string :employee_name
      t.string :site_name
      t.string :client_name
      t.string :date

      t.timestamps
    end
  end
end
