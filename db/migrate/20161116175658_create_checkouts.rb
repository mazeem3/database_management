class CreateCheckouts < ActiveRecord::Migration[5.0]
  def change
    create_table :checkouts do |t|
      t.integer :user_id
      t.integer :emp_id
      t.integer :book_id
      t.datetime :borrowdate
      t.datetime :duedate

      t.timestamps
    end
  end
end
