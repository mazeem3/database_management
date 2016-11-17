class CreateCheckins < ActiveRecord::Migration[5.0]
  def change
    create_table :checkins do |t|
      t.integer :user_id
      t.integer :emp_id
      t.integer :book_id
      t.integer :check_date

      t.timestamps
    end
  end
end
