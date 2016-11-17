class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :isbn
      t.integer :book_id
      t.string :title
      t.string :author
      t.integer :year
      t.integer :availibility

      t.timestamps
    end
  end
end
