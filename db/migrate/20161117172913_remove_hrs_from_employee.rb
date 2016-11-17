class RemoveHrsFromEmployee < ActiveRecord::Migration[5.0]
  def change
    def change
  remove_column :employee, :hours_worked, :integer
end
  end
end
