class AddHrsToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :hrs_worked, :integer, default: 30.0

  end
end
