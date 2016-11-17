class FixCheckouts < ActiveRecord::Migration[5.0]
  def change
    remove_column :checkouts, :emp_id, :integer
    remove_column :checkouts, :borrowdate, :datetime
    remove_column :checkouts, :duedate, :datetime



  end
end
