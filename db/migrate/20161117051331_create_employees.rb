class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.integer :employee_id
      t.integer :hours_worked
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
