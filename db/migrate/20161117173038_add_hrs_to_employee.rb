class AddHrsToEmployee < ActiveRecord::Migration[5.0]
  def change
    remove_column :employees, :hours_worked, :integer

  end
end
