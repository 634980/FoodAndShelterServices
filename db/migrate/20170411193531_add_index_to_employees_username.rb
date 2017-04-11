class AddIndexToEmployeesUsername < ActiveRecord::Migration[5.0]
  def change
    add_index :employees, :username, unique: true
  end
end
